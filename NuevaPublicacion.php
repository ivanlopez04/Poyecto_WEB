<?php 



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <script src="./js/bootstrap.bundle.min.js"></script>
    <title>Publicacion  </title>
</head>
<body>
    <form method="POST" action="InsertPublicacion.php">
        <div class="form-group" style="width: 80rem; margin: 0 auto;">
            <div class="row ">
                <label>Ingrese la Descipcion de si publicacion</label>
                <input class="form-control" type="text" id="descripciontxt" placeholder="Descripcio de la fotografias" requiered>
            </div>
            <div class="row">
                <label>El Lugar que se visito</label>
                <input class="form-control" id="ludartxt" type="text" placeholder="Descripcio de la fotografias" requiered>
            </div>
            <div class="row">
                <label>Fotografia</label>
                <input class="form-control" type="file" id="imagen" name="inamgen" id="inamgen" placeholder="Descripcio de la fotografias" accept="image/jpeg, image/png" requiered>
            </div>
            <div class="row">
                <input type="submit" class="btn">
            </div>
        </form>
    </form>
</body>
</html>