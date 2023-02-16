<?php
  // $host = 'localhost';
  // $db = 'agenda';
  // $user = 'root';
  // $password = '';

  // // Creando la conexion
  // $conn = new mysqli($host, $user, $password, $db);

  // // Checa si la conexion es correcta o no

  // if(!$conn) {
  //   die("La conexion ha fallado! ". mysqli_connect_error());
  // }

  // echo "Conexion Satisfactoria";
  // echo "<br/>";

  function OpenCon() {
    $host = "localhost";
    $db = 'agenda';
    $usuario = "root";
    $contra = '';

    $conn = new mysqli($host, $usuario, $contra, $db) or die("Conexion Fallida: %s\n". $conn -> error);

    return $conn;
  }


  function CloseCon($conn) {

    $conn -> close();
  }
?>