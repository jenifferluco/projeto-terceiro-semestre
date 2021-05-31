<?php
	include_once('connection.php');
	//ao extrair o post temas as variaveis email e senha
	extract($_POST);
	$email = $_POST['email'];
	$senha = $_POST['senha'];
	$busca = mysqli_query($con, "SELECT * from `usuario` where `email` = '$email' and `senha` = '$senha'");
	$cliente = mysqli_fetch_array($busca);

	if($email=='adm@gmail.com'){
		header('location:adm.php');
	} else if(($email == $cliente['email'])&&($senha == $cliente['senha'])){
			header('location:index.php');
		}else {
			echo "<script language='javascript'>
			alert('Login ou senha inválidos');
			window.location.href = 'error.html'
			</script>";
		}
?>

<?php
/*
include_once("connection.php");

	if(isset($_POST['email']) && !empty($_POST['email'])){
		$email = addslashes($_POST['email']);
	}

	if(isset($_POST['senha']) && !empty($_POST['senha'])){
		$pass = addslashes($_POST['senha']);
	}

$user = "SELECT * FROM `usuario` WHERE `email` = '$email' AND `senha` = '$pass'";

$resultUsers = mysqli_query($con, $user);

if(mysqli_num_rows($resultUsers) < 0) {
	echo "Erro ao acessar o banco de dados!";
}else {
	while($rows = mysqli_fetch_assoc($resultUsers)){
		header("Location: index.php");
	}

	echo "<script language='javascript'>
		alert('Login ou senha inválidos');
		window.location.href = 'error.html'
	</script>";
}
*/
?>