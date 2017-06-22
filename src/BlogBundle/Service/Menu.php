<?php

namespace BlogBundle\Service;

use Doctrine\ORM\EntityManager;

class Menu
{
    public function __construct(EntityManager $entityManager)
    {
        $this->em = $entityManager;
    }

    public function getCategories()
    {
        $repository = $this->em->getRepository('BlogBundle:PostCategory');
        $categories = $repository->findAll();
        return $categories;
    }
}