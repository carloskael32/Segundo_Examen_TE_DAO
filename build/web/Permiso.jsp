<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
         <h1>Segundo Examen Tecnologias Emergentes II</h1>

     
         <a href="UsuarioControlador">▶Usuarios &nbsp;&nbsp;&nbsp;&nbsp;</a>

         <a href="RolControlador">▶Roles &nbsp;&nbsp;&nbsp;&nbsp;</a>

         <a href="PermisoControlador">▶Permisos &nbsp;&nbsp;&nbsp;&nbsp;</a>
     
        
        <h2>Lista de Permisos</h2>
        <p><a href="PermisoControlador?action=add">Nuevo</a></p>
        
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Usuario</th>
                <th>Rol</th>
                 <th colspan="2"> opciones </th>
            </tr>
            <c:forEach var="item" items="${list_obj}">        
            <tr>
                <td>${item.id}</td>
                <td>${item.usuario}</td>
                <td>${item.rol}</td>
                <th><a href="PermisoControlador?action=edit&id=${item.id}">Editar</a></th>
                <td><a href="PermisoControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a></td>
            </tr>
            </c:forEach>
            
        </table>
        </div>
    </body>
</html>

