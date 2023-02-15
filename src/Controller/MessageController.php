<?php
// src/Controller/MessageController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Controller\BaseController;

use App\Entity\Message;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\Validator\Validator\ValidatorInterface;

class MessageController extends BaseController
{
    #[Route('/api/messages')]
    public function index(Request $request, ManagerRegistry $doctrine): Response
    {
        self::init($request);
        
        $messages = $doctrine->getRepository(Message::class)->findBy([],['time' => 'DESC']);
        
        $data = array();
        foreach ($messages as $message)
        {
             array_push($data, array(
                 'name' => $message->getName(),
                 'text' => $message->getText(),
                 'color' => $message->getColor(),
                 'time' => $message->getTime()->format("Y-m-d H:i:s") 
             ));
        }

        $response = new Response();
        $response->headers->set('Content-Type', 'application/json');
        $response->headers->set('Access-Control-Allow-Origin', '*');
        $response->setContent(json_encode($data));
        
        return $response;
    }
    
    #[Route('/api/messages/add')]
    public function add(Request $request, ManagerRegistry $doctrine, ValidatorInterface $validator): Response
    {
        self::init($request);
        
        $response = new Response();
        $response->headers->set('Content-Type', 'application/json');
        $response->headers->set('Access-Control-Allow-Origin', '*');
        
        $post = json_decode($request->getContent(), true);

        $message = new Message();
        $message->setName($post['name']);
        $message->setEmail(array_key_exists('email', $post) ? $post['email'] : "");
        $message->setText($post['message']);
        $message->setTime(new \DateTime('now'));
        $message->setColor('#000000'); // TODO
        
        $errors = $validator->validate($message);
        if(count($errors) > 0)
        {
            $response->setContent(json_encode(array('status' => 'error', 'error' => (string) $errors)));
            return $response;
        }
        
        $entityManager = $doctrine->getManager();
        $entityManager->persist($message);
        $entityManager->flush();

        $response->setContent(json_encode(array('status' => 'ok')));
        return $response;
    }
}