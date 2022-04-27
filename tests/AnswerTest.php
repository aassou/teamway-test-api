<?php

namespace App\Tests;

use ApiPlatform\Core\Bridge\Symfony\Bundle\Test\ApiTestCase;
use Symfony\Contracts\HttpClient\Exception\ClientExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\DecodingExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\RedirectionExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\ServerExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\TransportExceptionInterface;

class AnswerTest extends ApiTestCase
{

    const EXPECTED_JSON_RESPONSE = '{
        "@context": "/api/contexts/Answer",
        "@id": "/api/answers/4",
        "@type": "Answer",
        "choice": "I feel good!",
        "score": 4,
        "questionId": "/api/questions/2",
        "id": 4,
        "created": "2022-04-25T14:45:23+00:00",
        "createdBy": "abdelilah",
        "updated": "2022-04-25T14:45:23+00:00",
        "updatedBy": "abdelilah",
        "isPublished": true
    }';

    /**
     * @throws TransportExceptionInterface
     * @throws ServerExceptionInterface
     * @throws RedirectionExceptionInterface
     * @throws DecodingExceptionInterface
     * @throws ClientExceptionInterface
     */
    public function testGetAnswerById(): void
    {
        // When
        static::createClient()->request('GET', '/api/answers/4');

        // Then
        $this->assertResponseIsSuccessful();

        $this->assertResponseHeaderSame(
            'content-type', 'application/ld+json; charset=utf-8'
        );

        $this->assertJsonContains(self::EXPECTED_JSON_RESPONSE);
    }
}
