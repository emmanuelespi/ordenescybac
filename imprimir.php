<?php
header("Cache-Control: no-cache, must-revalidate");
require_once("classes/Connection.class.php");
$singleton = Connection::singleton();
$db = $singleton->get_connection();
$id = intval($_GET['id']);
$sql = "SELECT *, DATE_FORMAT(fecha, '%d/%m/%Y') AS fecha_dmy FROM servicio WHERE id=?";
$stm = $db->prepare($sql);
$stm->execute([$id]);
$data_order = $stm->fetch(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <?php
        include_once("inc/metas.inc.php");
        include_once("inc/css.inc.php");
        ?>
    </head>

    <body onLoad="window.print()">

        <table border="0" cellpadding="0" cellspacing="0" align="center" width="612">
            <tr> 
                <td colspan="2" valign="top">
                    <table width="612" border="0">
                        <tr> 
                            <td><p><font size="2" face="Trebuchet MS"><img src="headimp.jpg" width="200" height="85" /></font></p></td>
                            <td>
                                <div align="center">
                                    <p>
                                        <font size="2" face="Trebuchet MS">
                                            Av. Primavera # 237-A Col. Jardines de Tuxtla.<br>
                                            Tel y Fax: (961) 6157858. Tuxtla Gutierrez, Chiapas
                                        </font>
                                    </p>
                                    <p><font size="2" face="Trebuchet MS">www.grupocybac.com</font></p>
                                </div>
                            </td>
                        </tr>
                        <tr> 
                            <td><font size="2" face="Trebuchet MS">&nbsp;</font></td>
                            <td><p align="right"><font size="2" face="Trebuchet MS"><?=$data_order['fecha_dmy']?></font></p></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr> 
                <td colspan="2" valign="top">
                    <p align="center"><font color="#000000" size="3" face="Trebuchet MS"><strong>ORDEN DE SERVICIO<br>&nbsp;</strong></font></p>
                </td>
            </tr>
            <tr> 
                <td height="36" colspan="2" valign="top" >
                    <div align="center">
                        <table width="500" border="0" align="center" cellpadding="3" cellspacing="0">
                            <tr> 
                                <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">No. de Orden:</font></strong></div></td>
                                <td><font size="2" face="Trebuchet MS"><?=$id?></font></td>
                                <td>
                                    <strong><font color="#000000" size="2" face="Trebuchet MS">Tipo de Servicio:</font></strong>
                                </td>
                                <td><font size="2" face="Trebuchet MS"><?=$data_order['tipo']?></font></td>
                            </tr>
                            <tr> 
                                <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">Cliente:</font></strong></div></td>
                                <td><font size="2" face="Trebuchet MS"><?=$data_order['cliente']?></font></td>
                                <td><strong><font color="#000000" size="2" face="Trebuchet MS">E-mail:</font></strong></td>
                                <td><font size="2" face="Trebuchet MS"><?=$data_order['email']?></font></td>
                            </tr>
                            <tr> 
                                <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">Telefono:</font></strong></div></td>
                                <td><font size="2" face="Trebuchet MS"><?=$data_order['telefono']?></font></td>
                                <td><strong><font color="#000000" size="2" face="Trebuchet MS">Celular:</font></strong></td>
                                <td><font size="2" face="Trebuchet MS"><?=$data_order['celular']?></font></td>
                            </tr>
                            <tr> 
                                <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">Equipo:</font></strong></div></td>
                                <td><font size="2" face="Trebuchet MS"><?=$data_order['equipo']?></font></td>
                                <td><strong><font color="#000000" size="2" face="Trebuchet MS">Marca:</font></strong></td>
                                <td><font size="2" face="Trebuchet MS"><?=$data_order['marca']?></font></td>
                            </tr>
                            <tr> 
                                <td><div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">Modelo:</font></strong></div></td>
                                <td><font size="2" face="Trebuchet MS"><?=$data_order['modelo']?></font></td>
                                <td><strong><font color="#000000" size="2" face="Trebuchet MS">ID  WEB:</font></strong></td>
                                <td><font size="2" face="Trebuchet MS"><?=$data_order['idweb']?></font></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div align="left"><strong><font color="#000000" size="2" face="Trebuchet MS">N&uacutemero de Serie:</font></strong></div>
                                </td>
                                <td colspan="2">
                                    <font size="2" face="Trebuchet MS"><?=$data_order['serie']?></font>
                                </td>
                            </tr>
                            <? if($data_order['status'] == 'Listo' || $data_order['status'] == 'Entregado'){ ?>
                            <?	}?>
                            <? if($data_order['status'] == 'Entregado'){ ?>
                            <?	}?>
                        </table>
		                <hr>
                        <table width="500" border="0" align="center" cellpadding="3" cellspacing="0">
                            <tr> 
                                <td>
                                    <div align="left">
                                        <strong><font color="#000000" size="2" face="Trebuchet MS">Falla Reportada:</font></strong>
                                    </div>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr> 
                                <td colspan="4"><div align="left"><font size="2" face="Trebuchet MS"><?=$data_order['falla']?></font></div>
                            </td>
                            </tr>
                            <? if($data_order['status'] == 'Listo' || $data_order['status'] == 'Entregado'){ ?>
                            <?	}?>
                            <? if($data_order['status'] == 'Entregado'){ ?>
                            <?	}?>
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
                                    <div align="left"><font size="2" face="Trebuchet MS"><?=$data_order['condiciones']?></font></div>
                                </td>
                            </tr>
                            <? if($data_order['status'] == 'Listo' || $data_order['status'] == 'Entregado'){ ?>
                            <?	}?>
                            <? if($data_order['status'] == 'Entregado'){ ?>
                            <?	}?>
                        </table>
                        <hr>
                        <p>
                            <font size="2" face="Trebuchet MS">
                                Para ver el status de tu orden de servicio entra a:<br>
                                <a href="http://www.computadorasgc.com/soporte.php" target="_blank">www.computadorasgc.com/soporte.php</a><br>
                                Usando tu n&uacute;mero de orden y el ID WEB 
                            </font>
                        </p>
                        <table width="500" border="0" align="center" cellpadding="3" cellspacing="0">
                            <tr> 
                                <td colspan="4"><div align="left">
                                    <p><strong><font color="#000000" size="2" face="Trebuchet MS">NOTA:</font></strong></p>
                                    <p align="justify">
                                        <font color="#000000" size="1" face="Trebuchet MS">
                                            PARA ENTREGAR EL EQUIPO ES INDISPENSABLE LA PRESENTACION DE ESTA ORDEN DE SERVICIO. GRUPO CYBAC NO SE HACE RESPONSABLE POR LA INFORMACION CONTENIDA EN EL DISCO DURO, EN CASO DE QUE SE REQUIERA RESPALDO DE INFORMACION, SIEMPRE Y CUANDO ESTO SEA POSIBLE, SE GENERARA UN CARGO. EL USUARIO SE COMPROMETE A RECOGER SU EQUIPO EN UN LAPSO NO MAYOR A 30 DIAS, EN CASO CONTRARIO EL EQUIPO SERA DADO DE BAJA SIN RESPONSABILIDAD ALGUNA PARA GRUPO CYBAC.
                                        </font>
                                    </p>
                                  </div>
                                </td>
                            </tr>
                            <? if($data_order['status'] == 'Listo' || $data_order['status'] == 'Entregado'){ ?>
                            <?	}?>
                            <? if($data_order['status'] == 'Entregado'){ ?>
                            <?	}?>
                        </table>
                        <p>&nbsp;</p><p>&nbsp;</p>
                        <table width="500" border="0" align="center" cellpadding="3" cellspacing="0">
                            <tr> 
                                <td colspan="2"><div align="center">___________________</div></td>
                                <td colspan="2"><div align="center">___________________</div></td>
                            </tr>
                            <tr> 
                                <td colspan="2">
                                    <div align="center">
                                        <font size="2" face="Trebuchet MS">
                                            <?
                                            switch ($data_order['recibio']) {
                                                case 'Ariel':
                                                    print "ARIEL NARVAEZ CORTAZAR";
                                                    break;
                                                case 'Carlos':
                                                    print "CARLOS ZENTENO HERNANDEZ";
                                                    break;
                                                case 'Omar':
                                                    print "OMAR CASTAÑEDA CORRAL";
                                                    break;
                                                case 'Ruben':
                                                    print "RUBEN DE JESUS SOLIS BAUTISTA";
                                                    break;
                                                case 'William':
                                                    print "WILLIAM RAMIREZ RUIZ";
                                                    break;
            	                               case 'Roberto':
                                                    print "ROBERTO AMORES TAPIA";
                                                    break;
                                            }
             			                    ?>
                                        </font>
                                </div>
                            </td>
                            <td colspan="2">
                                <div align="center">
                                    <font size="2" face="Trebuchet MS">FIRMA DEL CLIENTE</font>
                                </div>
                            </td>
                        </tr>
                        <tr> 
                            <td><div align="left"><strong></strong></div></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <? if($data_order['status'] == 'Listo' || $data_order['status'] == 'Entregado'){ ?>
                        <?	}?>
                        <? if($data_order['status'] == 'Entregado'){ ?>
                        <?	}?>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </body>
</html>