<?php

namespace BlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="home")
     */
    public function indexAction(Request $request)
    {
        $em    = $this->get('doctrine.orm.entity_manager');
        $dql   = "SELECT p FROM BlogBundle:Post p";
        $query = $em->createQuery($dql);

        $paginator  = $this->get('knp_paginator');
        $posts = $paginator->paginate(
            $query, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            5/*limit per page*/
        );
        return $this->render('BlogBundle:Default:index.html.twig', ['posts' => $posts]);
    }

    /**
     * @Route("/post/{title}", name="singlePost")
     */
    public function postIdAction($title)
    {
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('BlogBundle:Post');
        $post = $repository->findOneBy(['title' => $title]);
        return $this->render('BlogBundle:Default:single.html.twig', ['post' => $post]);
    }

    /**
     * @Route("/category/{name}", name="category")
     */
    public function categoryAction($name)
    {
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('BlogBundle:Post');
        $posts = $repository->createQueryBuilder('post')
            ->join('post.categories','c')
            ->where('c.name = ?1')
            ->setParameter(1, $name)
            ->getQuery()->getResult();

        return $this->render('BlogBundle:Default:index.html.twig', ['posts' => $posts]);
    }
}
