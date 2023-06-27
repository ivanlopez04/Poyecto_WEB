<?php
    include 'conexion.php';    
    $queryconsult='SELECT u.NombreUsuario,P.Descripcion, P.Lugar, F.fotografia1, F.fotografia2, F.fotografia3 FROM Publicaciones P INNER JOIN fotografias F ON F.idpublifoto = P.idfotografias INNER JOIN Usuario u ON P.idUsuario = u.idUsuario';
    $params = array();
    $stmt = sqlsrv_query($conn, $queryconsult, $params);
    
    if( $stmt === false ) {
        die(print_r(sqlsrv_errors(), true));
    }
    $row_count = sqlsrv_has_rows($stmt);
    if ($row_count)
    {
        while($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)){
            echo'<div class="row" style="width: 80rem; margin: 0 auto;">'; 
            echo'   <div class="card" style="width: 18rem;">';
            /*$imageData = sqlsrv_get_field($row['fotografia1'], 0, SQLSRV_PHPTYPE_STREAM(SQLSRV_ENC_BINARY));
            header("Content-Type: image/jpeg");
            fpassthru($imageData);*/
            echo'       <img class="card-img-top" src="'.$row['fotografia1'].'" alt="Card image cap">';
            echo'       <div class="card-body">';
            echo'            <h5 class="card-title">'.$row['NombreUsuario'].'</h5>';
            echo'           <h6 class="card-subtitle mb-2 text-muted">'.$row['Lugar'].'</h6>';
            echo'           <p class="card-text">'.$row['Descripcion'].'</p>';
            echo'            <a href="#" class="card-link">Card link</a>';
            echo'            <a href="#" class="card-link">row[]</a>';
            echo'       </div>';
            echo'   </div>    ';   
            echo    '<br>'; 
            echo    '<br>'; 
            echo    '<br>';                         
            echo'</div>';   
            //$contador++;
        }
    }
      





    sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);  
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <script src="./js/bootstrap.bundle.min.js"></script>
    <title>Document</title>
</head>
<body>
    
</body>
</html>