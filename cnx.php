<?
$conexion = mysql_connect("localhost", "cybaco_master","hwY86SDK5")
             or die("No he podido conectar.");

$descriptor = mysql_select_db("cybaco_ordenes", $conexion)
             or die("No puedo abrir la base de datos.");
?>