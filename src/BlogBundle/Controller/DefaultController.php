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
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('BlogBundle:Post');
        $query = $repository->createQueryBuilder('p')
            ->orderBy('p.pubDate', 'DESC')
            ->getQuery();

        $paginator  = $this->get('knp_paginator');
        $posts = $paginator->paginate(
            $query, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            5/*limit per page*/
        );

        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('BlogBundle:PostCategory');
        $categories = $repository->findAll();
        return $this->render('BlogBundle:Default:index.html.twig', ['posts' => $posts, 'categories' => $categories]);
    }

    /**
     * @Route("/{slug}", name="slug")
     */
    public function slugAction(Request $request, $slug)
    {
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('BlogBundle:Post');
        $post = $repository->findOneBy(['slug' => $slug]);
        $posts = [$post];
        if(!$post){
            $repository = $em->getRepository('BlogBundle:Post');
            $query = $repository->createQueryBuilder('post')
                ->join('post.categories','c')
                ->where('c.name = ?1')
                ->setParameter(1, $slug);

            $paginator  = $this->get('knp_paginator');
            $posts = $paginator->paginate(
                $query, /* query NOT result */
                $request->query->getInt('page', 1)/*page number*/,
                5/*limit per page*/
            );
        }
        return $this->render('BlogBundle:Default:single.html.twig', ['posts' => $posts]);
    }
}
