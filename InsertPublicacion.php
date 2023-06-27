<?php
    include 'conexion.php';
    $params = array();
    $idUsuario=$_SESSION['idUsuario'];
    $descripcion=$_GET['descripciontxt'];
    $lugar=$_GET['ludartxt'];
    $imagen=$_GET['inamgen'];  
    $numerofotografias=0;  
    $insertQuery="INSERT INTO [fotografias] (fotografia1) values ('$imagen')";
    $numerofinal="SELECT top 1 idpublifoto FROM fotografias order by idpublifoto desc";
    $insertpubli="INSERT INTO Publicaciones(idUsuario, idfotografias, Descripcion, Lugar) values 
    ('$idUsuario', '$numerofotografias', '$descripcion', '$lugar')";
    //Se inserta los registros
    $stmt = sqlsrv_query($conn, $insertQuery, $params);    
    if( $stmt === false ) {
        die(print_r(sqlsrv_errors(), true));
    }
    $row_countfoto = sqlsrv_has_rows($stmt);
?>