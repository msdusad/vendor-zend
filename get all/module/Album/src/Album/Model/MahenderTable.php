<?php
namespace Album\Model;

 use Zend\Db\TableGateway\TableGateway;

 class MahenderTable
 {
     protected $tableGateway;

     public function __construct(TableGateway $tableGateway)
     {
         $this->tableGateway = $tableGateway;
     }

     public function fetchAll()
     {
         $resultSet = $this->tableGateway->select();
         return $resultSet;
     }

     public function getMahender($id)
     {
         $id  = (int) $id;
         $rowset = $this->tableGateway->select(array('id' => $id));
         $row = $rowset->current();
         if (!$row) {
             throw new \Exception("Could not find row $id");
         }
         return $row;
     }

     public function saveMahender(Mahender $mahender)
     {
         $data = array(
             'mscheckf' => $mahender->inputname,
             'mschecks'  => $mahender->inputage,
         );

         $id = (int) $mahender->id;
         if ($id == 0) {
             $this->tableGateway->insert($data);
         } else {
             if ($this->getMahender($id)) {
                 $this->tableGateway->update($data, array('id' => $id));
             } else {
                 throw new \Exception('Mahender id does not exist');
             }
         }
     }

     public function deleteMahender($id)
     {
         $this->tableGateway->delete(array('id' => (int) $id));
     }
 }
