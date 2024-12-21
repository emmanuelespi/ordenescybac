<?php include_once("inc/routes.inc.php"); ?>
<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-blue-cybac">
    <a class="navbar-brand" href="<?=VER_ORDENES?>">
        <img src="img/logo_horizontal.svg" width="150" class="img-fluid" alt="">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item <?=($sct == 'ordenes' ? 'active' : '')?>">
                <a class="nav-link" href="<?=VER_ORDENES?>">Ver Ordenes</a>
            </li>
            <li class="nav-item <?=($sct == 'add_orden' ? 'active' : '')?>">
                <a class="nav-link" href="<?=AGREGAR_ORDEN?>">Agregar Orden</a>
            </li>
            <li class="nav-item <?=($sct == 'ok_orden' ? 'active' : '')?>">
                <a class="nav-link" href="<?=ORDENES_LISTAS?>">Ordenes Listas</a>
            </li>
            <li class="nav-item <?=($sct == 'close_orden' ? 'active' : '')?>">
                <a class="nav-link" href="<?=ORDENES_CERRADAS?>">Ordenes Cerradas</a>
            </li>
        </ul>
    </div>
</nav>