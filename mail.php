<? header("Cache-Control: no-cache, must-revalidate");
include"cnx.php";
$result=mysql_query("Select * from servicio Where id=$id", $conexion) or die("No se pudo realizar la consulta");
while($res = mysql_fetch_array($result)){
				$id=$res[0];
				$tipo=$res[1];
				$cliente=$res[2];
				$email=$res[3];
				$telefono=$res[4];
				$celular=$res[5];
				$fecha=$res[6];
				$equipo=$res[7];
				$marca=$res[8];
				$modelo=$res[9];
				$falla=$res[10];
				$condiciones=$res[11];
				$recibio=$res[12];
				$reparacion=$res[14];
				$precio=$res[15];
				$fechae=time();
				$idweb=$res[17];
}
?>
<html>
<head>
<title>Administracion</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table border="0" cellpadding="0" cellspacing="0" align="center" width="612">
  <tr> 
    <td colspan="2" valign="top"><table width="612" border="0">
        <tr> 
          <td><p><font size="2" face="Trebuchet MS"><img src="headimp.jpg" width="200" height="85"></font></p>
            </td>
          <td><div align="center">
              <p><font size="2" face="Trebuchet MS">Av. Primavera # 237-A | Col. Jardines de Tuxtla<br>Tel (961) 6157858 | Tuxtla Gutierrez, Chiapas</font></p>
              <p><font size="2" face="Trebuchet MS">www.grupocybac.com</font></p>
              </div></td>
        </tr>
        <tr> 
          <td><font size="2" face="Trebuchet MS">&nbsp;</font></td>
          <td><p align="right"><font size="2" face="Trebuchet MS"><? $fecha2=date("d/m/Y",$fechae); echo $fecha2;?></font></p></td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td colspan="2" valign="top"><p align="center"><font color="#000000" size="3" face="Trebuchet MS"><strong>ORDEN DE SERVICIO<br>&nbsp;</strong></font></p>
      </td>
  </tr>
  <tr> 
    <td height="36" colspan="2" valign="top" ><div align="center">
          
        <table width="500" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr> 
            <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">No. 
                de Orden:</font></strong></div></td>
            <td><font size="2" face="Trebuchet MS"><? echo $id?></font></td>
            <td><strong><font color="#000000" size="2" face="Trebuchet MS">Tipo 
              de Servicio:</font></strong></td>
            <td><font size="2" face="Trebuchet MS"><? echo $tipo?></font></td>
          </tr>
          <tr> 
            <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">Cliente:</font></strong></div></td>
            <td><font size="2" face="Trebuchet MS"><? echo $cliente?></font></td>
            <td><strong><font color="#000000" size="2" face="Trebuchet MS">E-mail:</font></strong></td>
            <td><font size="2" face="Trebuchet MS"><? echo $email?></font></td>
          </tr>
          <tr> 
            <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">Telefono:</font></strong></div></td>
            <td><font size="2" face="Trebuchet MS"><? echo $telefono?></font></td>
            <td><strong><font color="#000000" size="2" face="Trebuchet MS">Celular:</font></strong></td>
            <td><font size="2" face="Trebuchet MS"><? echo $celular?></font></td>
          </tr>
          <tr> 
            <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">Equipo:</font></strong></div></td>
            <td><font size="2" face="Trebuchet MS"><? echo $equipo?></font></td>
            <td><strong><font color="#000000" size="2" face="Trebuchet MS">Marca:</font></strong></td>
            <td><font size="2" face="Trebuchet MS"><? echo $marca?></font></td>
          </tr>
          <tr> 
            <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">Modelo:</font></strong></div></td>
            <td><font size="2" face="Trebuchet MS"><? echo $modelo?></font></td>
            <td><strong><font color="#000000" size="2" face="Trebuchet MS">ID Servicio Web:</font></strong></td>
            <td><font size="2" face="Trebuchet MS"><? echo $idweb?></font></td>
          </tr>
        </table>
		<hr>
        <table width="500" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr> 
            <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">Falla 
                Reportada:</font></strong></div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="4"><div align="left"><font size="2" face="Trebuchet MS"><? echo $falla?></font></div>
            </td>
          </tr>
        </table>
        <hr>
        <table width="500" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr> 
            <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">Condiciones:</font></strong></div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="4"><div align="left"><strong></strong></div>
              <div align="left"><font size="2" face="Trebuchet MS"><? echo $condiciones?></font></div>
            </td>
          </tr>
        </table>
        <hr>
        <table width="500" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr>
            <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">Servicio Realizado :</font></strong></div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td colspan="4"><div align="left"><strong></strong></div>
                <div align="left"><font size="2" face="Trebuchet MS"><? echo $reparacion?></font></div></td>
          </tr>
        </table>
        <hr>
        <p><font face="Trebuchet MS"><strong>Total : <font size="2">$ <? echo $precio?> </font></strong><font size="2">&nbsp; &nbsp;(no incluye IVA) </font></font></p>
        <table width="500" border="0" align="center" cellpadding="3" cellspacing="0">
          <tr> 
            <td colspan="4"><div align="left">
                <p><strong><font color="#000000" size="2" face="Trebuchet MS">NOTA:</font></strong></p>
                <p align="justify"><font color="#000000" size="1" face="Trebuchet MS">PARA ENTREGAR EL EQUIPO ES INDISPENSABLE LA PRESENTACION DE ESTA ORDEN DE SERVICIO. GRUPO CYBAC NO SE HACE RESPONSABLE POR LA INFORMACION CONTENIDA EN EL DISCO DURO, EN CASO DE QUE SE REQUIERA RESPALDO DE INFORMACION, SIEMPRE Y CUANDO ESTO SEA POSIBLE, SE GENERARA UN CARGO. EL USUARIO SE COMPROMETE A RECOGER SU EQUIPO EN UN LAPSO NO MAYOR A 30 DIAS, EN CASO CONTRARIO EL EQUIPO SERA DADO DE BAJA SIN RESPONSABILIDAD ALGUNA PARA GRUPO  CYBAC.</font></p>
              </div>
            </td>
          </tr>
        </table>
        <p>&nbsp;</p>
    </div></td>
  </tr>
   </table>
  </body>
</html>