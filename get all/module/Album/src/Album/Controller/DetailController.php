<?php
namespace Album\Controller;

 use Zend\Mvc\Controller\AbstractActionController;
 use Zend\View\Model\ViewModel;
 use Album\Model\Detail;          // <-- Add this import
 use Album\Form\DetailForm;       // <-- Add this import

 class DetailController extends AbstractActionController
 {
 	 protected $detailTable;
      protected $albumTable;

     public function indexAction()
     {
     	
// grab the paginator from the AlbumTable
     $paginator = $this->getAlbumTable()->fetchAll(true);
     // set the current page to what has been passed in query string, or to 1 if none set
     $paginator->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
     // set the number of items per page to 10
     $paginator->setItemCountPerPage(5);

     return new ViewModel(array(
         'paginator' => $paginator,
         'details' => $this->getDetailTable()->fetchAll(),
     ));
         
     }

     

     // Add content to this method:
     public function addAction()
     {
         $form = new DetailForm();
         $form->get('submit')->setValue('Add');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $album = new Detail();
             $form->setInputFilter($album->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $album->exchangeArray($form->getData());
                 $this->getDetailTable()->saveDetail($album);

                 // Redirect to list of albums
                 return $this->redirect()->toRoute('detail');
             }
         }
         return array('form' => $form);
     }
 //
 public function editAction()
     {
         $id = (int) $this->params()->fromRoute('id', 0);
         if (!$id) {
             return $this->redirect()->toRoute('detail', array(
                 'action' => 'add'
             ));
         }

         // Get the Album with the specified id.  An exception is thrown
         // if it cannot be found, in which case go to the index page.
         try {
             $album = $this->getDetailTable()->getDetail($id);
         }
         catch (\Exception $ex) {
             return $this->redirect()->toRoute('detail', array(
                 'action' => 'index'
             ));
         }

         $form  = new DetailForm();
         $form->bind($album);
         $form->get('submit')->setAttribute('value', 'Edit');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $form->setInputFilter($album->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $this->getDetailTable()->saveDetail($album);

                 // Redirect to list of albums
                 return $this->redirect()->toRoute('detail');
             }
         }

         return array(
             'id' => $id,
             'form' => $form,
         );
     }
 //

     public function deleteAction()
     {
     }

     //   public function getAlbumTable()
     // {
     //     if (!$this->albumTable) {
     //         $sm = $this->getServiceLocator();
     //         $this->albumTable = $sm->get('Album\Model\AlbumTable');
     //     }
     //     return $this->albumTable;
     // }

        public function getDetailTable()
     {
         if (!$this->detailTable) {
             $sm = $this->getServiceLocator();
             $this->detailTable = $sm->get('Album\Model\DetailTable');
         }
         return $this->detailTable;
     }


   public function getAlbumTable()
     {
         if (!$this->albumTable) {
             $sm = $this->getServiceLocator();
             $this->albumTable = $sm->get('Album\Model\AlbumTable');
         }
         return $this->albumTable;
     }






 }
 ?>