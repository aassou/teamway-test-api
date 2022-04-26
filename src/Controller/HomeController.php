<?php

namespace App\Controller;

use App\Entity\Question;
use App\Repository\QuestionRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @param Request $request
     * @param EntityManagerInterface $manager
     * @return JsonResponse
     */
    #[Route('/test', methods: 'GET')]
    public function index(Request $request, EntityManagerInterface $manager): JsonResponse
    {
        $questionsManager = $manager->getRepository(Question::class);
        $response = new JsonResponse();
        $questions = $questionsManager->findAll();
        $response->setContent(json_encode($questions));

        return $response;
    }
}