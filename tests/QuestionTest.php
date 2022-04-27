<?php

namespace App\Tests;

use ApiPlatform\Core\Bridge\Symfony\Bundle\Test\ApiTestCase;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Contracts\HttpClient\Exception\ClientExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\DecodingExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\RedirectionExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\ServerExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\TransportExceptionInterface;

class QuestionTest extends ApiTestCase
{
    /**
     * @throws ClientExceptionInterface
     * @throws DecodingExceptionInterface
     * @throws RedirectionExceptionInterface
     * @throws ServerExceptionInterface
     * @throws TransportExceptionInterface
     */
    public function testGetQuestions(): void
    {
        // When
        $response = static::createClient()->request('GET', '/api/questions')->toArray();

        // Then
        $this->assertResponseIsSuccessful();

        $this->assertResponseHeaderSame(
            'content-type', 'application/ld+json; charset=utf-8'
        );

        $this->assertArrayHasKey('hydra:member', $response);
        $this->assertEquals('/api/contexts/Question', $response["@context"]);
        $this->assertEquals('/api/questions', $response["@id"]);
        $this->assertEquals('hydra:Collection', $response["@type"]);
        $this->assertGreaterThan(0, $response["hydra:totalItems"]);
        $this->assertCount(5, $response["hydra:member"]);
    }


    /**
     * @throws TransportExceptionInterface
     * @throws ServerExceptionInterface
     * @throws RedirectionExceptionInterface
     * @throws DecodingExceptionInterface
     * @throws ClientExceptionInterface
     */
    public function testPagination(): void
    {
        // When
        $response = static::createClient()->request('GET', '/api/questions/3')->toArray();

        // Then
        $this->assertResponseIsSuccessful();

        $this->assertResponseHeaderSame(
            'content-type', 'application/ld+json; charset=utf-8'
        );

        $this->assertEquals('/api/contexts/Question', $response["@context"]);
        $this->assertEquals('/api/questions/3', $response["@id"]);
        $this->assertEquals('Question', $response["@type"]);
        $this->assertIsArray($response["answers"]);
        $this->assertGreaterThan(0, $response["answers"]);
    }


    /**
     * @throws TransportExceptionInterface
     */
    public function testGetQuestionByIdFailure(): void
    {
        // When question with id 5555 does not exist
        static::createClient()->request('GET', '/api/questions/5555');
        // Then HTTP Error 404 is returned
        $this->assertResponseStatusCodeSame(404);
    }
}