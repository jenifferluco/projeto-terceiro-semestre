<?php
	$Authorization = false;

	if(isset($_POST['name']) && !empty($_POST['name'])){
		$name = addslashes($_POST['name']);
		$Authorization = true;
	}

	if(isset($_POST['email']) && !empty($_POST['email'])){
		$email = addslashes($_POST['email']);
		$Authorization = true;
	}

	if(isset($_POST['email']) && !empty($_POST['email'])){
		$email = addslashes($_POST['email']);
		$Authorization = true;
	}

	if(isset($_POST['message']) && !empty($_POST['message'])){
		$message = addslashes($_POST['message']);
		$Authorization = true;
	}

	if($Authorization == true){
		$to = "pedrosan010@gmail.com";
		$subject = "Contato Site Projetos";
		$message = "Nome: ".$name."\r\n".
				"Email: ".$email."\r\n".
				"Contato: ".$email."\r\n".
				"Mensagem: ".$message."\r\n";
		$header = "From:pedrosan010@gmail.com"."\r\n".
					"Reply-To:".$email."\r\n".
					"X=Mailer:PHP/".phpversion();

	//if(mail($to,$subject,$message,$header)){
		 echo "<script language='javascript'>
                        alert('Email enviado');
                        window.location.href = 'index.html'
                        </script>";
                 //}
	}//else{
		//echo "Houve uma falha ao enviar seu email, tente novamente";
	//}
	//}
?>