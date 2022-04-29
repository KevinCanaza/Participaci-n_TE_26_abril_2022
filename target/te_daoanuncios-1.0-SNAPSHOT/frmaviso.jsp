<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Aviso"%>
<%
    Aviso aviso = (Aviso) request.getAttribute("aviso");
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
        <form action="AvisoController" method="post">
            <input type="hidden" name="id" value="${aviso.id}" />
            <table>
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="${aviso.titulo}" /></td>
                </tr>
                <tr>
                    <td>Contenido</td>
                    <td>
                        <textarea name="contenido">${aviso.contenido}</textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" /></td>
                </tr>
            </table>
        </form>
        <a class="avolver" href="index.jsp">Volver</a>
    </body>
</html>
