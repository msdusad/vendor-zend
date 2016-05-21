<?php 
namespace Album;
 use Album\Model\Album;
 use Album\Model\AlbumTable;
  use Album\Model\Detail;
 use Album\Model\DetailTable;
 use Album\Model\Mahender;
 use Album\Model\MahenderTable;
 use Zend\Db\ResultSet\ResultSet;
 use Zend\Db\TableGateway\TableGateway;

 use Zend\ModuleManager\Feature\AutoloaderProviderInterface;
 use Zend\ModuleManager\Feature\ConfigProviderInterface;

 class Module implements AutoloaderProviderInterface, ConfigProviderInterface
 {
     public function getAutoloaderConfig()
     {
         
     }

     public function getConfig()
     {
         return include __DIR__ . '/config/module.config.php';
     }

       public function getServiceConfig()
     {
         return array(
             'factories' => array(
                 'Album\Model\AlbumTable' =>  function($sm) {
                     $tableGateway = $sm->get('AlbumTableGateway');
                     $table = new AlbumTable($tableGateway);
                     return $table;
                 },
                 'AlbumTableGateway' => function ($sm) {
                     $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                     $resultSetPrototype = new ResultSet();
                     $resultSetPrototype->setArrayObjectPrototype(new Album());
                     return new TableGateway('album', $dbAdapter, null, $resultSetPrototype);
                 },

   'Album\Model\DetailTable' =>  function($sm) {
                     $tableGateway = $sm->get('DetailTableGateway');
                     $table = new DetailTable($tableGateway);
                     return $table;
                 },
                 'DetailTableGateway' => function ($sm) {
                     $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                     $resultSetPrototype = new ResultSet();
                     $resultSetPrototype->setArrayObjectPrototype(new detail());
                     return new TableGateway('detail', $dbAdapter, null, $resultSetPrototype);
                 },


 'Album\Model\MahenderTable' =>  function($sm) {
                     $tableGateway = $sm->get('MahenderTableGateway');
                     $table = new MahenderTable($tableGateway);
                     return $table;
                 },
                 'MahenderTableGateway' => function ($sm) {
                     $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                     $resultSetPrototype = new ResultSet();
                     $resultSetPrototype->setArrayObjectPrototype(new mahender());
                     return new TableGateway('mahender', $dbAdapter, null, $resultSetPrototype);
                 },



             ),
         );
     }
 }
?>
