<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Usuario"%>
<%
    Usuario usuario = (Usuario) request.getAttribute("usuario");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilos.css">
    </head>
    <body>
        <h1 class="alinear">Nuevo registro</h1>
        <form action="UsuarioController" method="post">
            <input type="hidden" name="id" value="${usuario.id}" />
            <table>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="${usuario.nombre}" /></td>
                </tr>
                <tr>
                    <td>Correo</td>
                    <td><input type="text" name="correo" value="${usuario.correo}" /></td>
                </tr>
                <tr>
                    <td>Clave</td>
                    <td><input type="text" name="clave" value="${usuario.clave}" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="boton" type="submit" /></td>
                </tr>
            </table>
        </form>
        <a class="avolver" href="index.jsp">Volver</a>
    </body>
</html>
