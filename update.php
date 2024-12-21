<?php
	require_once("classes/Connection.class.php");
	$singleton = Connection::singleton();
	$db = $singleton->get_connection();
	
	try {
		$sql = "UPDATE servicio SET tipo=?, cliente=?, email=?, telefono=?, celular=?, equipo=?, marca=?, modelo=?, serie=?, falla=?, condiciones=?, recibio=?, precio=?, anticipo=?, restante=? WHERE id=?";
		$stm = $db->prepare($sql);
		$stm->execute([$_POST['tipo'], $_POST['cliente'], $_POST['email'], $_POST['telefono'], $_POST['celular'], $_POST['equipo'], $_POST['marca'], $_POST['modelo'], $_POST['serie'], $_POST['falla'], $_POST['condiciones'], $_POST['recibio'], $_POST['precio'], $_POST['anticipo'], $_POST['restante'], $_POST['id']]);

		echo "<script type=\"text/javascript\">alert('Se han actualizado los datos.'); window.location.href ='https://www.grupocybac.com/ordenes/';</script>";
	}catch(PDOException $ex) {
		echo $ex->getMessage();
	}
?>