<?php
header("Cache-Control: no-cache, must-revalidate");
require_once("classes/Connection.class.php");
$singleton = Connection::singleton();
$db = $singleton->get_connection();
$flag_notification = false;

if(isset($_POST['listo'])) {
    $sql = "SELECT * FROM servicio WHERE id=?";
    $stm = $db->prepare($sql);
    $stm->execute([$_POST['listo']]);
    $data_order = $stm->fetch(PDO::FETCH_ASSOC);
    try {
        $sql = "UPDATE servicio SET reparacion=?, precio=?, status='Listo' WHERE id=?";
        $stm = $db->prepare($sql);
        $stm->execute([$_POST['reparacion'], $_POST['precio'], $_POST['listo']]); 

        include_once("php/send_ok.php");
    }catch(PDOException $ex) {
        echo $ex->getMessage();
        exit;
    }
}
$sql = "SELECT id FROM servicio WHERE status='Listo'";
$stm = $db->prepare($sql);
$stm->execute();
$total_rows = $stm->rowCount();
$footer_fixed = true;
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <?php
        $sct = "ok_orden";
        $title = "Ordenes Listas";
        include_once("inc/metas.inc.php");
        include_once("inc/css.inc.php");
        ?>
    </head>

    <body>
        <?php include_once("inc/header.inc.php"); ?>

        <div class="container py-5">
            <?php
                if($flag_notification) {
                    ?>
                    <div class="col-12">
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>Éxito!</strong> El estatus de la orden <?=$_POST['listo']?> se actualizó.
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    </div>
                    <?php
                }
            ?>
            <div class="table-responsive">
                <table class="table">
                    <thead class="thead-dark">
                        <tr class="text-center">
                            <th scope="col" colspan="11"><h3>Ordenes Listas</h3></th>
                        </tr>
                        <tr class="text-center">
                            <th scope="col">Detalles</th>
                            <th scope="col">Orden</th>
                            <th scope="col">Tipo de Servicio</th>
                            <th scope="col">Cliente</th>
                            <th scope="col">Equipo</th>
                            <th scope="col">Marca</th>
                            <th scope="col">Días Cybac</th>
                            <th scope="col">Recibió</th>
                            <th scope="col">Reparación</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Cerrar</th>
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
                            $sql ="SELECT id, tipo, cliente, DATE_FORMAT(fecha, '%d/%m/%Y') AS fecha_dmy, equipo, marca, falla, condiciones, DATEDIFF(NOW(), fecha) AS dias, recibio, reparacion, precio 
                                        FROM servicio WHERE status='Listo' ORDER BY fecha DESC LIMIT {$start}, {$page_size} ";
                            $stm = $db->prepare($sql);
                            $stm->execute();
                  
                            while($row = $stm->fetch(PDO::FETCH_ASSOC)){
                            ?>
                                <tr> 
                                    <td class="text-center">
                                        <a href="ordenes.php?id=<?=$row['id']?>" class="btn btn-warning btn-sm">Ver</a>
                                    </td>
                                    <td class="text-center">
                                        <p><?=$row['id']?></p>
                                    </td>
                                    <td class="text-center">
                                        <p><?=$row['tipo']?></p>
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
                                    <td class="text-center">
                                        <p><?=$row['dias']?></p>
                                    </td>
                                    <td class="text-center">
                                        <p><?=$row['recibio']?></p>
                                    </td>
                                    <td class="text-center">
                                        <p><?=$row['reparacion']?></p>
                                    </td>
                                    <td class="text-center">
                                        <p><?=$row['precio']?></p>
                                    </td>
                                    <td class="text-center">
                                        <a href="ordenes_close.php?cerrar=<?=$row['id']?>" class="btn btn-warning btn-sm">Cerrar</a>
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