<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <!--charset para caracteres especiales-->
  <meta charset="UTF-8">

  <!--author-->
  <meta name="author" content="Nombre Autor">

  <!--descripcion-->
  <meta name="description" content="La mejor veterinaria">
  <!--keywords-->
  <meta name="keywords" content="registro de usuario, formulario de registro, crear cuenta, registro en linea">

  <!--minium responsive viewport-->

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!--TITLE-->
  <title>Registro de usuario</title>

  <!--FAVICON-->
  <link rel="icon" type="image/x-icon" href="./icons8-aplication-64.png">

  <!--CSS-->
  <!--boostrap css/ icons-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

  <!--custom css-->
  <link rel="stylesheet" href="css/style.css">

</head>

<body class="text-center">
<!--login form-->

<main class="form-signin w-30 ">

  <form action="users_register" method="post">
    <img class="mb-4" src="./img/logo.png" alt="SIGCE" width="200">

    <h1 class="h5 mb-2 fw-normal">REGISTRARME</h1>

    <div class="form-floating mb-4">
      <input type="text" class="form-control" name="user_firstname" id="floatingInput" placeholder="Ingrese su nombre" required autofocus pattern="[A-Za-z]{2,12}">

      <label for="floatingInput">Nombre</label>
    </div>

    <div class="form-floating mb-4">
      <input type="text" class="form-control" name="user_lastname" id="floatingApe" placeholder="Ingrese su apellido" required pattern="[A-Za-z]{2,12}">

      <label for="floatingInput">Apellido</label>
    </div>


    <div class="form-floating mb-4">
      <input type="email" class="form-control" name="user_email" id="floatingEmail" placeholder="Ingrese su correo eletronico" required pattern="[A-Za-z0-9,@,.]{8,60}">

      <label for="floatingInput">Correo</label>
    </div>

    <div class="form-floating">
      <input type="password" class="form-control" name="user_password" id="floatingPassword" placeholder="Ingrese su contraseña" required pattern="[A-Za-z0-9]{8,45}">

      <label for="floatingPassword">Contraseña</label>
    </div>


    <button class="w-40 btn btn-lg btn-primary" type="submit">Registrarme</button>

    <div id="register">
      <a href="index.jsp">Iniciar sesión</a>
    </div>
    <p class="mt-3 mb-3 text-muted">Todos los derechos son reservados SIGCE
      ©<%=displayDate()%>
    </p>
  </form>
</main>

<--!Bootstrap script-->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<%!
  public String displayDate() {
    SimpleDateFormat dateFormat= new SimpleDateFormat("YYY");
    Date date = Calendar.getInstance().getTime();
    return dateFormat.format(date);
  }
%>

</body>

</html>