<?php
  include('../../includes/inc.main.php');
  
  $Status = $_GET['status'] ? $_GET['status'] : 'P';
  switch ($Status) {
    case 'P':
        $Title = "Ord. de Compra a Prov. Sin Confirmar";
    break;
    case 'A':
        $Title = "Ord. de Compra Encargadas a Prov.";
    break;
    case 'S':
        $Title = "Ord. de Compra a Prov. a Controlar";
    break;
    case 'C':
        $Title = "Ord. de Compra a Prov. Pend. de Ingreso";
    break;
    case 'F':
        $Title = "Historial de Ordenes de Compra a Prov.";
    break;
    case 'I':
        $Title = "Eliminadas";
    break;
  }
  $Company = new ProviderOrder();
  $Head->setStyle('../../../vendors/datepicker/datepicker3.css'); // Date Picker Calendar
  $Head->setTitle($Title);
  $Head->setIcon($Menu->GetHTMLicon());
  $Head->setSubTitle($Menu->GetTitle());
  $Head->setHead();

  /* Header */
  include('../../includes/inc.top.php');
  
  /* Body Content */ 
  // Search List Box
  $Company->ConfigureSearchRequest();
  echo $Company->InsertSearchList();
  // Help Modal
  //include('modal.help.php');
  
  /* Footer */
  $Foot->setScript('../../../vendors/datepicker/bootstrap-datepicker.js');
  $Foot->SetScript('../../js/script.searchlist.js');
  include('../../includes/inc.bottom.php');
?>