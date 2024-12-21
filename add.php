<?php
	require_once("classes/Connection.class.php");
	$singleton = Connection::singleton();
	$db = $singleton->get_connection();

	$idweb = rand(1000,9999); 
	try {
		$sql = "INSERT INTO servicio VALUES('', ?, ?, ?, ?, ?, CURDATE(), ?, ?, ?, ?, ?, ?, ?, 'Reparacion', '', ?, ?, ?, '', ?)";
		$stm = $db->prepare($sql);
		$stm->execute([$_POST['tipo'], $_POST['cliente'], $_POST['email'], $_POST['telefono'], $_POST['celular'], $_POST['equipo'], $_POST['marca'], $_POST['modelo'], $_POST['serie'], $_POST['falla'], $_POST['condiciones'], $_POST['recibio'], $_POST['precio'], $_POST['anticipo'], $_POST['restante'], $idweb]);

		echo "<script type=\"text/javascript\">alert('Orden agregada.'); window.location.href ='https://www.grupocybac.com/ordenes/';</script>";
	}catch(PDOException $ex) {
		echo $ex->getMessage();
	}
?>
