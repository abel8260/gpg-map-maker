<?php

namespace ge;



class Model {
  
    public function validaDados() {
        
      require '../conexao.php';   


			

		
			
$linkn = $_POST["linkn"];
$linkl = $_POST["linkl"];			
$linko = $_POST["linko"];
$links = $_POST["links"];			
$linkscn = $_POST["linkscn"];


 
$sth=$pdo->prepare("INSERT INTO `pear` (`id_pe`, `link1`, `link2`, `link3`, `llink4`, `x`, `y`, `scene`, `linkc`, `coin_pe`, `drop_pe`, `greytile`, `blacktile`) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$linkscn', '', NULL, '', '', '');");



			$sth->execute();

		header('location: ../../front/page_1/main.php');


		}}$model = new Model();
		$validacao = $model->validaDados();
?>

