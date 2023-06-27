<?php
	$serverName='DESKTOP-TRPG7LU';
	$connectionOptions = array(
		'Database' => 'TuViajero'
	);	
	$conn = sqlsrv_connect($serverName, $connectionOptions);
    if($conn)
    {
        echo"Conexion Establecida";
    }
    else{
        echo"Conexion no establecida";
    }
	return $conn;
?>