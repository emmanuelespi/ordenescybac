<? header("Cache-Control: no-cache, must-revalidate");
include"cnx.php";
if(isset($add)){
$fecha=time();
$idweb = rand(1000,9999); 
$result=mysql_query("INSERT INTO servicio VALUES('','$tipo','$cliente','$email','$telefono','$celular','$fecha','$equipo','$marca','$modelo','$falla','$condiciones','$recibio','Reparacion','','','','$idweb')", $conexion) or die("no se pudo agregar");
$msg="Orden Agregada";
}
?>
<html>
<head>
<title>Administracion</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table border="0" cellpadding="0" cellspacing="0" align="center" width="993">
  <tr> 
    <td colspan="2" valign="top"><img src="head.jpg" width="993" height="148"></td>
  </tr>
  <tr> 
    <td colspan="2" valign="top" background="menu.jpg"><p align="center"><font color="#000000" size="4" face="Trebuchet MS"><strong>AGREGAR 
        ORDEN DE SERVICIO</strong></font></p>
      <p align="center"><strong><font color="#000000" size="3" face="Trebuchet MS"><a href="ordenes_add.php">Agregar 
        Orden</a> :: <a href="index.php">Ver Ordenes</a> :: <a href="ordenes_ok.php">Ver 
        Ordenes Listas</a> :: <a href="ordenes_close.php">Ver Ordenes Cerradas</a></font></strong></p> 
    </td>
  </tr>
  <tr> 
    <td height="36" colspan="2" valign="top" background="back.jpg" ><div align="center">
<form name="form1" method="post" action="">
              
          <br>
          <p align="center"><font color="#FFFFFF" size="2" face="Trebuchet MS"><strong><? echo $msg?></strong></font></p>
              
          <table width="40%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr> 
              <td background="menu.jpg"><div align="center"><font size="2" face="Trebuchet MS"><strong>Tipo 
                  de Servicio</strong></font></div></td>
              <td> <div align="left"> 
                  <select name="tipo" id="tipo">
                    <option value="Normal">Normal</option>
                    <option value="Garantia">Garantia</option>
                  </select>
                </div></td>
            </tr>
            <tr> 
              <td background="menu.jpg"><div align="center"><font size="2" face="Trebuchet MS"><strong>Cliente</strong></font></div></td>
              <td> <div align="left"> 
                  <input name="cliente" type="text" id="cliente">
                </div></td>
            </tr>
            <tr> 
              <td background="menu.jpg"><div align="center"><font size="2" face="Trebuchet MS"><strong>e-mail</strong></font></div></td>
              <td> <div align="left"> 
                  <input name="email" type="text" id="email">
                </div></td>
            </tr>
            <tr> 
              <td background="menu.jpg"><div align="center"><font size="2" face="Trebuchet MS"><strong>Telefono</strong></font></div></td>
              <td> <div align="left"> 
                  <input name="telefono" type="text" id="telefono">
                </div></td>
            </tr>
            <tr> 
              <td background="menu.jpg"><div align="center"><font size="2" face="Trebuchet MS"><strong>Celular</strong></font></div></td>
              <td> <div align="left"> 
                  <input name="celular" type="text" id="celular">
                </div></td>
            </tr>
            <tr> 
              <td background="menu.jpg"><div align="center"><font size="2" face="Trebuchet MS"><strong>Equipo</strong></font></div></td>
              <td> <div align="left"> 
                  <input name="equipo" type="text" id="equipo">
                </div></td>
            </tr>
            <tr> 
              <td background="menu.jpg"><div align="center"><font size="2" face="Trebuchet MS"><strong>Marca</strong></font></div></td>
              <td> <div align="left"> 
                  <input name="marca" type="text" id="marca">
                </div></td>
            </tr>
            <tr> 
              <td background="menu.jpg"><div align="center"><font size="2" face="Trebuchet MS"><strong>Modelo</strong></font></div></td>
              <td> <div align="left"> 
                  <input name="modelo" type="text" id="modelo">
                </div></td>
            </tr>
            <tr> 
              <td background="menu.jpg"><div align="center"><font size="2" face="Trebuchet MS"><strong>Falla</strong></font></div></td>
              <td> <div align="left"> 
                  <textarea name="falla" id="falla"></textarea>
                </div></td>
            </tr>
            <tr> 
              <td background="menu.jpg"><div align="center"><font size="2" face="Trebuchet MS"><strong>Condiciones</strong></font></div></td>
              <td> <div align="left"> 
                  <textarea name="condiciones" id="condiciones"></textarea>
                </div></td>
            </tr>
            <tr> 
              <td background="menu.jpg"><div align="center"><font size="2" face="Trebuchet MS"><strong>Recibio</strong></font></div></td>
              <td> <div align="left"> 
                  <select name="recibio" id="recibio">
                    <option value="Ariel">Ariel</option>
                    <option value="Juan Jesus">Juan Jes&uacute;s</option>
                    <option value="Ruben">Ruben</option>
                    <option value="Ruben">Norberto</option>
                  </select>
                </div></td>
            </tr>
          </table>
          <div align="right"></div>
          <p align="center">
                <input name="add" type="submit" id="add" value="AGREGAR">
              </p>
            </form>
        </div></td>
  </tr>
   </table>
  </body>
</html>