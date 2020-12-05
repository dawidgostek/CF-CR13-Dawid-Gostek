<?php

namespace App\Controller;

use App\Entity\Events;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class EventController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function showAction()
   {
       $events = $this->getDoctrine()->getRepository( 'App:Events')->findAll();
       return $this ->render('event/index.html.twig', array('events'=>$events));
   }
   /**
     * @Route("/details/{id}", name="details")
     */
    public function  detailsAction($id)
   {
       $events = $this->getDoctrine()->getRepository( 'App:Events')->find($id);
       return $this->render( 'event/details.html.twig', array('events' => $events));
   }
   /**
     * @Route("/edit/{id}", name="edit")
     */
    public  function editAction( $id, Request $request){
        $events = $this->getDoctrine()->getRepository('App:Events')->find($id);
        $events->setName($events->getName());
        $events->setTime($events->getTime());
        $events->setShortDescription($events->getShortDescription());
        $events->setDescription($events->getDescription());
        $events->setImage($events->getImage());
        $events->setCapacity($events->getCapacity());
        $events->setEmail($events->getEmail());
        $events->setPhonenumber($events->getPhonenumber());
        $events->setAddress($events->getAddress());
        $events->setUrl($events->getUrl());
        $events->setType($events->getType());

        $form = $this->createFormBuilder($events)->add( 'name', TextType::class, array ('attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px')))
        ->add( 'time', DateTimeType::class, array ('attr' => array ('class'=> 'input-group border-0' , 'style'=> 'margin-bottom:15px; height:35px')))
        ->add( 'shortDescription', TextareaType::class, array( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:80px')))
        ->add( 'description' , TextareaType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:200px')))
        ->add( 'image' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px')))
        ->add( 'capacity' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px')))
        ->add( 'email' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px')))
        ->add( 'phonenumber' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px')))
        ->add( 'address' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px')))
        ->add( 'url' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px')))
        ->add( 'type' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px')))
        ->add( 'save' , SubmitType::class, array ( 'label' => 'Save' , 'attr'  => array ( 'class' => 'btn btn-danger' , 'style' => 'width: 20%; margin-top: 15px;' ))) 
        ->getForm();
        $form->handleRequest($request);
                if($form->isSubmitted() && $form->isValid()){
                    
                    $name = $form[ 'name' ]->getData();
                    $time = $form[ 'time' ]->getData();
                    $shortDescription = $form[ 'shortDescription' ]->getData();
                    $description = $form[ 'description' ]->getData();
                    $image = $form[ 'image' ]->getData();
                    $capacity = $form[ 'capacity' ]->getData();
                    $email = $form[ 'email' ]->getData();
                    $phonenumber = $form[ 'phonenumber' ]->getData();
                    $address = $form[ 'address' ]->getData();
                    $url = $form[ 'url' ]->getData();
                    $type = $form[ 'type' ]->getData();

                    $events->setName($name);
                    $events->setTime($time);
                    $events->setShortDescription($shortDescription);
                    $events->setDescription($description);
                    $events->setImage($image);
                    $events->setCapacity($capacity);
                    $events->setEmail($email);
                    $events->setPhonenumber($phonenumber);
                    $events->setAddress($address);
                    $events->setUrl($url);
                    $events->setType($type);
                    $em = $this ->getDoctrine()->getManager();
                    $em->persist($events);
                    $em->flush();
                     $this ->addFlash(
                             'notice' ,
                             'Event edited'
                            );
                    return $this ->redirectToRoute('home');
               }
               return  $this->render( 'event/edit.html.twig', array( 'events' => $events, 'form' => $form->createView()));
           }
           /**
     * @Route("/create", name="create")
     */
    public function  createAction(Request $request)
    {
        $event = new Events;
        $form = $this->createFormBuilder($event)->add( 'name', TextType::class, array ('attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px', 'placeholder' => 'Name of event')))
        ->add( 'time', DateTimeType::class, array ('attr' => array ('class'=> 'input-group border-0' , 'style'=> 'margin-bottom:15px; height:35px')))
        ->add( 'shortDescription', TextareaType::class, array( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:80px' , 'placeholder' => 'Max 255 characters')))
        ->add( 'description' , TextareaType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:200px')))
        ->add( 'image' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px', 'placeholder' => 'Image URL')))
        ->add( 'capacity' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px')))
        ->add( 'email' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px' , 'placeholder' => 'Contact e-mail')))
        ->add( 'phonenumber' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px', 'placeholder' => '+43 000-0000-0000' )))
        ->add( 'address' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px', 'placeholder' => 'Street name, number, ZIP code and city name')))
        ->add( 'url' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px' , 'placeholder' => 'Web page')))
        ->add( 'type' , TextType::class, array ( 'attr' => array ('class'=> 'input-group border-0 px-2' , 'style'=> 'margin-bottom:15px; height:35px', 'placeholder' => 'music/sport/theater/exhibition')))
        ->add( 'save' , SubmitType::class, array ( 'label' => 'Save Event' , 'attr'  => array ( 'class' => 'btn btn-danger' , 'style' => 'width: 20%; margin-top: 15px;'))) 
        ->getForm();
        $form->handleRequest($request);
 
         if ($form->isSubmitted() && $form->isValid()){
           
            $name = $form[ 'name' ]->getData();
            $time = $form[ 'time' ]->getData();
            $shortDescription = $form[ 'shortDescription' ]->getData();
            $description = $form[ 'description' ]->getData();
            $image = $form[ 'image' ]->getData();
            $capacity = $form[ 'capacity' ]->getData();
            $email = $form[ 'email' ]->getData();
            $phonenumber = $form[ 'phonenumber' ]->getData();
            $address = $form[ 'address' ]->getData();
            $url = $form[ 'url' ]->getData();
            $type = $form[ 'type' ]->getData();
 
            $event->setName($name);
            $event->setTime($time);
            $event->setShortDescription($shortDescription);
            $event->setDescription($description);
            $event->setImage($image);
            $event->setCapacity($capacity);
            $event->setEmail($email);
            $event->setPhonenumber($phonenumber);
            $event->setAddress($address);
            $event->setUrl($url);
            $event->setType($type);
            $em = $this ->getDoctrine()->getManager();
            $em->persist($event);
            $em->flush();
             $this ->addFlash(
                     'notice' ,
                     'Event Added'
                    );
             return   $this ->redirectToRoute( 'home' );
        }
 
         return   $this ->render( 'event/create.html.twig' , array ( 'form'  => $form->createView()));
    }
    /**
     * @Route("/delete/{id}", name="delete")
     */
    public function deleteAction($id){
        $em = $this->getDoctrine()->getManager();
        $events = $em->getRepository('App:Events')->find($id);
        $em->remove($events);
            $em->flush();
            $this->addFlash(
                'notice',
                    'Event Removed'
                );
    return  $this->redirectToRoute('home');
    }
}

