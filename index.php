<?php
header("Cache-Control: no-cache, must-revalidate");
require_once("classes/Connection.class.php");
$singleton = Connection::singleton();
$db = $singleton->get_connection();
$sql = "SELECT id FROM servicio WHERE status='Reparacion'";
$stm = $db->prepare($sql);
$stm->execute();
$total_rows = $stm->rowCount();
$footer_fixed = true;
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <?php
            $sct = "ordenes";
            $title = "Ver Ordenes";
            include_once("inc/metas.inc.php");
            include_once("inc/css.inc.php");
        ?>
    </head>
    <body>
        <?php include_once('inc/header.inc.php'); ?>

        <div class="container py-5">
            <div class="table-responsive">
                <table class="table">
                    <thead class="thead-dark">
                        <tr class="text-center">
                            <th scope="col" colspan="10"><h3>Ver Ordenes</h3></th>
                        </tr>
                        <tr class="text-center">
                            <th scope="col">Detalles</th>
                            <th scope="col">Orden</th>
                            <th scope="col">Cliente</th>
                            <th scope="col">Equipo</th>
                            <th scope="col">Marca</th>
                            <th scope="col">Falla Reportada</th>
                            <th scope="col">Fecha de Entrada</th>
                            <th scope="col">Imprimir</th>
                            <th scope="col">Editar</th>
                            <th scope="col">Listo Para Entrega</th>
                        </tr>
                    </thead>
                    <tbody>
                        <? 
                            $page_size = 10;
                            $page = (isset($_GET['pg']) && is_numeric($_GET['pg']) ? intval($_GET['pg']) : 1);
                            if (!$page) {
                               $start = 0;
                               $page = 1;
                            }
                            else {
                               $start = ($page - 1) * $page_size;
                            }
                            $total_pages = ceil($total_rows / $page_size);
                            $sql ="SELECT id, tipo, cliente, DATE_FORMAT(fecha, '%d/%m/%Y') AS fecha_dmy, equipo, marca, falla, condiciones 
                                        FROM servicio WHERE status='Reparacion' ORDER BY fecha DESC LIMIT {$start}, {$page_size} ";
                            $stm = $db->prepare($sql);
                            $stm->execute();
                  
                            while($row = $stm->fetch(PDO::FETCH_ASSOC)){
                            ?>
                                <tr> 
                                    <td class="text-center">
                                        <a href="ordenes?id=<?=$row['id']?>" class="btn btn-warning btn-sm">Ver</a>
                                    </td>
                                    <td class="text-center">
                                        <p><?=$row['id']?></p>
                                    </td>
                                    <td>
                                        <p><?=$row['cliente']?></p>
                                    </td>
                                    <td class="text-center">
                                        <p><?=$row['equipo']?></p>
                                    </td>
                                    <td>
                                        <p><?=$row['marca']?></p>
                                    </td>
                                    <td>
                                        <p><?=$row['falla']?></p>
                                    </td>
                                    <td>
                                        <p><?=$row['fecha_dmy']?></p>
                                    </td>
                                    <td class="text-center">
                                        <a href="imprimir.php?id=<?=$row['id']?>" target="_blank" class="btn btn-warning btn-sm">Imprimir</a>
                                    </td>
                                    <td class="text-center">
                                        <a href="ordenes_update.php?id=<?=$row['id']?>" class="btn btn-warning btn-sm">Editar</a>
                                    </td>
                                    <td class="text-center">
                                        <a href="ordenes_listo.php?listo=<?=$row['id']?>" class="btn btn-warning btn-sm">Listo</a>
                                    </td>
                                </tr>
                              <? }?>
                    </tbody>
                </table>
            </div>

            <div class="col-12">
                <h5><span class="badge badge-secondary">Total de Ordenes: <?=$total_rows?></span></h5>
            </div>

            <div class="col-12">
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                        <?php
                            if ($total_pages > 1) {
                                $pagination_group = 10;
                                if($total_pages > $pagination_group) {
                                    if(($total_pages - $page) >= $pagination_group) {
                                        $current = $page;
                                    }else {
                                        $current = ($total_pages - $pagination_group) + 1;
                                    }
                                }else {
                                    $current = 1;
                                }
                                if ($page != 1) {
                                    ?>
                                    <li class="page-item">
                                        <a class="page-link" href="?pg=<?=($page-1)?>" tabindex="-1"><<</a>
                                    </li>
                                    <?php
                                }
                                    $ind = 1;
                                    for ($i=$current;$i<=$total_pages;$i++) {
                                        if ($page == $i) {
                                            ?> <li class="page-item active"><span class="page-link"><?=$page?></span></li> <?php
                                        }
                                        else {
                                            ?> <li class="page-item"><a class="page-link" href="?pg=<?=$i?>"><?=$i?></a></li> <?php
                                        }
                                        if($ind == $pagination_group) {
                                            $i = $total_pages;
                                        }
                                        $ind++;
                                    }
                                    if ($page != $total_pages) {
                                        ?>
                                        <li class="page-item">
                                            <a class="page-link" href="?pg=<?=($page+1)?>">>></a>
                                        </li>
                                        <?php
                                    }
                            }
                        ?>
                    </ul>
                </nav>
            </div>
        </div>
        
        <?php
            include_once("inc/footer.inc.php"); 
            include_once("inc/js.inc.php"); 
        ?>  
    </body>
</html>
