<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Rol</title>
    </head>
    <body>
        <div align="center">
         <h1>Segundo Examen Tecnologias Emergentes II</h1>

       
    
        
        <h3>
            <c:if test="${objeto.id == 0}">Inserte un Nuevo </c:if>
            <c:if test="${objeto.id > 0}">Editar un </c:if>
            Rol    
        </h3>
        <form action="RolControlador" method="post">
            <input type="hidden" name="id" value="${objeto.id}">
            <table width="311">       
                <tr>
                    <td>Descripcion</td>
                    <td ><input name="descripcion" type="text" value="${objeto.descripcion}" required></td>                   
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="enviar"></td>
                </tr>

            </table>
        </form>
                  <br>
            <a href="RolControlador">Volver..</a>
        </div>
    </body>
</html>
