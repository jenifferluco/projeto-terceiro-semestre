<?php 

include_once('connection.php');

if(isset($_POST['name']) && !empty($_POST['name'])){
	$name = addslashes($_POST['name']);
}

if(isset($_POST['email']) && !empty($_POST['email'])){
	$email = addslashes($_POST['email']);
}

if(isset($_POST['senha']) && !empty($_POST['senha'])){
	$pass = addslashes($_POST['senha']);
}

if(isset($_POST['cpf']) && !empty($_POST['cpf'])){
	$cpf = addslashes($_POST['cpf']);
}

if(isset($_POST['data']) && !empty($_POST['data'])){
	$data = addslashes($_POST['data']);
}

if(isset($_POST['endereco']) && !empty($_POST['endereco'])){
	$endereco = addslashes($_POST['endereco']);
}


if(isset($_POST['tele']) && !empty($_POST['tele'])){
	$telefone = addslashes($_POST['tele']);
}


 mysqli_query($conn, "INSERT INTO `usuario`(`nome`,`email`, `senha`, `cpf`, `dataNascimento`, `endereco`,`telefone`) VALUES ('$name','$email','$pass','$cpf','$data','$endereco','$telefone');");
 echo "<script language='javascript'>
                        alert('Cadastro efetuado com sucesso!');
                        window.location.href = 'adm.php'
                        </script>";

header('Location: index.php');
