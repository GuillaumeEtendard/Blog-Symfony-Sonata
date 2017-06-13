<?php
namespace BlogBundle\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class PostAdmin extends AbstractAdmin
{
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper->add('title');
        $formMapper->add('content');
        $formMapper->add('categories', 'sonata_type_collection', [
            'required'     => false,
            'by_reference' => false,
        ],
            [
                'edit' => 'inline',
            ]);
    }
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper->add('title');
        $datagridMapper->add('content');
    }
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper->addIdentifier('id');
        $listMapper->add('pubDate');
        $listMapper->add('lastUpdate');
        $listMapper->add('title');
        $listMapper->add('content');
        $listMapper->add('categories');
    }
}