<?php 

if(!$con = mysqli_connect('localhost','root','')){
	echo "Erro ao entrar";	
}
if(!mysqli_select_db($con,'db_loja')){
 echo "Erro ao selecionar o banco";	
}
mysqli_query($con,"SET NAMES utf8");

?>