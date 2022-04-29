<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Usuario"%>
<%
    List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
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
        <div class="container">
            <h1 class="alinear">Listado de usuarios</h1>
            <a class="anuevo" href="UsuarioController?action=add">Nuevo</a>
            <table>
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Clave</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${usuarios}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombre}</td>
                        <td>${item.correo}</td>
                        <td>${item.clave}</td>
                        <td><a class="ablue" href="UsuarioController?action=edit&id=${item.id}">Editar</a></td>
                        <td><a class="ared" href="UsuarioController?action=delete&id=${item.id}">Eliminar</a></td>
                    </tr>              
                </c:forEach>
            </table>
        </div>
        <a class="avolver" href="index.jsp">Volver</a>
       
    </body>
</html>
