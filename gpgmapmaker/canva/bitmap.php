<?php


require('../db/conexao.php');

$_SESSION['scene'] = $_POST['mini'];


$scenes = $_SESSION['scene'];


$stmt = $pdo -> prepare("INSERT INTO `pear` (`id_pe`, `link1`, `link2`, `link3`, `llink4`, `x`, `y`, `scene`, `linkc`, `coin_pe`, `drop_pe`, `greytile`, `blacktile`) VALUES (NULL, NULL, NULL, NULL, NULL,NULL , NULL, '$scenes', '', 'coin', '', '', '');");

$stmt -> execute();
 header("location: canva.php");
?>