<?php 
//header("Cache-Control: no-cache, must-revalidate");
setlocale(LC_MONETARY, 'es_MX');
setlocale(LC_TIME, "es_MX");
$id = intval($_GET['id']);
require_once("classes/Connection.class.php");
$singleton = Connection::singleton(); 
$db = $singleton->get_connection();
$sql = "SELECT *, DATE_FORMAT(fecha, '%m/%d/%Y') AS fecha_mdy FROM servicio WHERE id={$id}";
$stm = $db->prepare($sql);
$stm->execute();
$data = $stm->fetch(PDO::FETCH_ASSOC);
$footer_fixed = false;
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <?php 
            $title = "Detalles de la Orden";
            $sct = "ordenes";
            include_once("inc/metas.inc.php");
            include_once("inc/css.inc.php");
        ?>
    </head>

    <body>
        <?php include_once("inc/header.inc.php"); ?>

        <div class="container py-5">
            <div class="table-responsive">
                <table class="table">
                    <thead class="thead-dark">
                        <tr class="text-center">
                            <th scope="col" colspan="2"><h3>Detalles de la Orden</h3></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right" width="25%"><strong>Tipo de Servicio:</strong></td>
                            <td width="75%"><?=$data['tipo']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Fecha de Entrada:</strong></td>
                            <td><?=strftime("%d de %B de %Y", strtotime($data['fecha_mdy']))?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Cliente:</strong></td>
                            <td><?=$data['cliente']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Correo:</strong></td>
                            <td><?=$data['email']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Teléfono:</strong></td>
                            <td><?=$data['telefono']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Teléfono Celular:</strong></td>
                            <td><?=$data['celular']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Equipo:</strong></td>
                            <td><?=$data['equipo']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Marca:</strong></td>
                            <td><?=$data['marca']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Modelo:</strong></td>
                            <td><?=$data['modelo']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Número de Serie:</strong></td>
                            <td><?=$data['serie']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Falla:</strong></td>
                            <td><?=$data['falla']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Condiciones:</strong></td>
                            <td><?=$data['condiciones']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Recibió:</strong></td>
                            <td><?=$data['recibio']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Estatus:</strong></td>
                            <td><?=$data['status']?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Precio:</strong></td>
                            <td><?=money_format('%.2n', $data['precio'])?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Anticipo:</strong></td>
                            <td><?=money_format('%.2n', $data['anticipo'])?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Restante:</strong></td>
                            <td><?=money_format('%.2n', $data['restante'])?></td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Id Web:</strong></td>
                            <td><?=$data['idweb']?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <?php
            include_once("inc/footer.inc.php");
            include_once("inc/js.inc.php");
        ?>
    </body>
</html>