<?php 
    header("Cache-Control: no-cache, must-revalidate");
    require_once("classes/Connection.class.php");
    $singleton = Connection::singleton();
    $db = $singleton->get_connection();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <?php
            $sct = "add_orden";
            $title = "Agregar Orden";
            include_once("inc/metas.inc.php");
            include_once("inc/css.inc.php");
        ?>
    </head>

    <body>
        <?php include_once("inc/header.inc.php"); ?>
        
        <div class="container py-5">
            <div class="alert alert-info text-center"><h4>Agregar Orden</h4></div>

            <form id="add_order" name="form1" method="post" action="add.php">
                <div class="form-group">
                    <label for="tipo">Tipo de Servicio</label>
                    <select id="tipo" name="tipo" class="form-control">
                        <option value="Normal">Normal</option>
                        <option value="Garantia">Garantia</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="cliente">Cliente</label>
                    <input id="cliente" name="cliente" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="email">Correo</label>
                    <input id="email" name="email" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="telefono">Teléfono</label>
                    <input id="telefono" name="telefono" type="text" class="form-control" maxlength="10" />
                </div>
                <div class="form-group">
                    <label for="celular">Celular</label>
                    <input id="celular" name="celular" type="text" class="form-control" maxlength="10" />
                </div>
                <div class="form-group">
                    <label for="equipo">Equipo</label>
                    <input id="equipo" name="equipo" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="marca">Marca</label>
                    <input id="marca" name="marca" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="modelo">Modelo</label>
                    <input id="modelo" name="modelo" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="serie">Número de Serie</label>
                    <input id="serie" name="serie" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="falla">Falla</label>
                    <textarea id="falla" name="falla" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label for="condiciones">Condiciones</label>
                    <textarea id="condiciones" name="condiciones" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label for="recibio">Recibió</label>
                    <select id="recibio" name="recibio" class="form-control">
                        <option value="Ariel">Ariel</option>
                        <option value="Carlos">Carlos</option>
                        <option value="William">William</option>
                        <option value="Omar">Omar</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="precio">Precio</label>
                    <input id="precio" name="precio" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="anticipo">Anticipo</label>
                    <input id="anticipo" name="anticipo" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="restante">Restante</label>
                    <input id="restante" name="restante" type="text" class="form-control" />
                </div>
                <div class="col-12 text-center">
                    <div class="btn-group">
                        <button type="reset" class="btn btn-danger">
                            <i class="fas fa-eraser"></i> Limpiar
                        </button>
                        <button type="submit" class="btn btn-success">
                            <i class="fas fa-save"></i> Guardar
                        </button>
                    </div>
                </div>
            </form>
        </div>

        <?php
            include_once("inc/footer.inc.php");
            include_once("inc/js.inc.php");
        ?>
    </body>
</html>