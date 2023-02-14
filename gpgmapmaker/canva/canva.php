
<!DOCTYPE html>
<html>


      <head>
      <meta charset="utf-8">

<!--básico-->  
    <meta charset="UTF-8"/>  
    <title>Canvas;</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/> 
<!---->

<!--tags para SEO-->
    <meta name="descripition" content="Noticias sobre abel barbosa."/>  
    <meta name="keywords" content="abel,vasconcelosb "/>
    <meta name="author" content="rock studios"/>   
<!---->

<!--tags pro favicon-->
  <link rel="shortcut icon" href="../static/fav.ico" >
  <link rel="icon" type="image/gif" href="../static/fav.ico" >
 
  






  <style>
*{
  margin:0px;
  padding:0px;

  font-family: 'Roboto', sans-serif;
 
}

html,body{
  height:100%;
  background-color: black;
}
a{
  text-decoration: none;
 float: left;
 position: left;
} 
</style>








  </head>




   <?php 
   session_start();
   require '../db/conexao.php';

                $linkscene = $_GET['linkscn'];
                $sthh=$pdo->prepare("SELECT * FROM config  WHERE scene = '$linkscene' ");

echo "<body style='max-width: 40vw' >";

echo "<a style='color:white; border: 3px solid white' href='../front/page_1/main.php'> voltar pro inicio</a>";


                $sthh->execute();
                $resultado_usuarios = $sthh-> fetchAll( PDO::FETCH_ASSOC );
                foreach($resultado_usuarios as  $row) {
                    $tpx = $row["total_px"];
                    $tts = $row["total_tiles"];
                  $sv =  strval($tpx);

echo "<input id='id3' style='background-color: black;color:white;' type='text' value=' localidades coordenadas'>";


    echo "<div class='painel-cards-1' >";
          
            echo "<div class='painel-nav-1' >";
                

                $linkscn = $_GET['linkscn'];




                    
                    



       

                $sthh=$pdo->prepare("SELECT * FROM pear WHERE scene = '$linkscn' ORDER BY id_pe DESC LIMIT $tts ");






                $sthh->execute();
                $resultado_usuarios = $sthh-> fetchAll( PDO::FETCH_ASSOC );
                 echo "<h3 style='color:white'>".$linkscn."</h3>";
                foreach($resultado_usuarios as  $row) {
                    $x = $row["x"];
                    $y = $row["y"];
                    $tg = $y AND $x;
                    $tr = $row["coin_pe"];
                    $dr = $row["drop_pe"];
                    $lkc = $row["linkc"];
                    $grey = $row["greytile"];
                    $dark = $row["blacktile"];




$sthhh=$pdo->prepare("SELECT * FROM initiale WHERE init = '$lkc' OR ended = '$lkc' ");

$sthhh->execute();
                $resultado_usuarioss = $sthhh-> fetchAll( PDO::FETCH_ASSOC );
                 
                
                    $rc =  $sthhh ->rowCount();





                      if($tr != NULL){

                   
          echo  "<a href='".$row["linkc"]."'>";
                    echo "<div class='card'>";

                                   echo "<td><img style='width:40px;height:40px' src='../static/bitmap.png'></td>";
                     echo '</div>';           
                                

                echo  "</a>";
   }elseif($dr != NULL){


                    echo  "<a href='".$row["linkc"]."'>";
                    echo "<div class='card'>";

                                   echo "<td><img style='width:40px;height:40px' src='".$dr."'></td>";
                     echo '</div>';           
                                

                echo  "</a>";
}elseif($dark == 'dark'){



 echo  "<a href='".$row["linkc"]."'>";
                    echo "<div class='card'>";

                                   echo "<td><img style='width:40px;height:40px' src='../static/terrain_minidark.png'></td>";
                     echo '</div>';           
                                

                echo  "</a>";

}elseif($grey == 'grey'){



 echo  "<a href='".$row["linkc"]."'>";
                    echo "<div class='card'>";

                                   echo "<td><img style='width:40px;height:40px' src='../static/terrain_minigravity.png'></td>";
                     echo '</div>';           
                                

                echo  "</a>";

}elseif($tg != NULL){

     echo  "<a href='".$row["linkc"]."'>";
                    echo "<div class='card'>";

                                   echo "<td><img style='width:40px;height:40px' src='../static/terrain_minig.png'></td>";
                     echo '</div>';           
                                

                echo  "</a>";

                
}else{

                        

                    echo  "<a href='../'".$row["linkc"].">";
                    echo "<div class='card'>";
                                   echo "<td><img style='width:40px;height:40px' src='../static/terrain_minir.png'></td>";      
                    echo  "</div>";  
                echo  "</a>";
  
              
            echo  "</div>";  
                
                 }}}

         


   
          $linkscene = $_GET['linkscn'];
$linkscn = $linkscene;
echo "<p> <form action='bitmap.php' method = 'POST'><input type='submit' value='+ mini coin add'> <img style='width:40px;height:40px' src='../static/bitmap.png'><input type='hidden'  name ='mini' value='".$linkscn."'></input></form></p>";

echo "<p> + <form action='terrain_minidark.php' method = 'POST'><input type='submit'value='+ mini dark add' ><img style='width:40px;height:40px' src='../static/terrain_minidark.png'><input type='hidden'  name ='mini' value='".$linkscn."'></input></form></p>";

echo "<p> + <form action='terrain_minig.php' method = 'POST'><input type='submit'   value='+ mini green add'><img style='width:40px;height:40px' src='../static/terrain_minig.png'><input type='hidden'  name ='mini' value='".$linkscn."'></input></form></p>";

echo "<p> + <form action='terrain_minir.php' method = 'POST'><input type='submit' value='+ mini red add'><input type='hidden'  name ='mini' value='".$linkscn."'></input><img style='width:40px;height:40px' src='../static/terrain_minir.png' ></input></form></p>";
        
  echo "</body>";



?>







</html>

