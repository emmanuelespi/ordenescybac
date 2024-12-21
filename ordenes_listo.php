<?php 
header("Cache-Control: no-cache, must-revalidate");
$id = intval($_GET['listo']);
require_once("classes/Connection.class.php");
$singleton = Connection::singleton(); 
$db = $singleton->get_connection();
$sql = "SELECT * FROM servicio WHERE id=?";
$stm = $db->prepare($sql);
$stm->execute([$id]);
$data_order = $stm->fetch(PDO::FETCH_ASSOC);
$footer_fixed = false;
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <?php
        $title = "Orden Lista";
        $sct = "ordenes";
        include_once("inc/metas.inc.php");
        include_once("inc/css.inc.php");
        ?>
    </head>

    <body>
        <?php include_once("inc/header.inc.php"); ?>

        <div class="container pt-5 spacing-bottom">
            <div class="col-12">
                <div class="card border-primary border-dark mb-3">
                    <div class="card-header text-center bg-dark text-white"><h3>Orden Lista</h3></div>
                    <div class="card-body text-dark">
                        <h5 class="card-title">Datos de la Orden</h5>
                        <table class="table table-sm">
                            <tbody>
                                <tr>
                                    <td><p><strong>Tipo de Servicio: </strong> <?=$data_order['tipo']?></p></td>
                                    <td><p><strong>Cliente: </strong> <?=$data_order['cliente']?></p></td>
                                </tr>
                                <tr>
                                    <td><p><strong>Correo: </strong> <?=$data_order['email']?></p></td>
                                    <td><p><strong>Teléfono: </strong> <?=$data_order['telefono']?></p></td>
                                </tr>
                                <tr>
                                    <td><p><strong>Celular: </strong> <?=$data_order['celular']?></p></td>
                                    <td><p><strong>Equipo: </strong> <?=$data_order['equipo']?></p></td>
                                </tr>
                                <tr>
                                    <td><p><strong>Marca: </strong> <?=$data_order['marca']?></p></td>
                                    <td><p><strong>Modelo: </strong> <?=$data_order['modelo']?></p></td>
                                </tr>
                                <tr>
                                    <td><p><strong>Falla: </strong> <?=$data_order['falla']?></p></td>
                                    <td><p><strong>Condiciones: </strong> <?=$data_order['condiciones']?></p></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><p><strong>Recibió: </strong> <?=$data_order['recibio']?></p></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer">
                        <form name="form1" method="post" action="ordenes_ok.php">
                            <input name="listo" type="hidden" id="listo" value="<?=$id?>">
                            <div class="form-group">
                                <label for="reparacion">* Servicio Realizado</label>
                                <textarea id="reparacion" name="reparacion" class="form-control form-control-sm" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="precio">Precio</label>
                                <input type="text" id="precio" name="precio" class="form-control form-control-sm" />
                            </div>
                            <div class="form-group">
                                <label for="correo">* Correo</label>
                                <input type="email" id="correo" name="correo" class="form-control form-control-sm" value="<?=$data_order['email']?>" required />
                            </div>
                            <div class="col-12 text-center">
                                <button class="btn btn-success" type="submit">Enviar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <?php
            include_once("inc/footer.inc.php");
            include_once("inc/js.inc.php");
        ?>
    </body>
</html>