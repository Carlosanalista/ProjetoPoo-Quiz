<%-- 
    Document   : home.jsp
    Created on : 08/11/2018, 08:57:08
    Author     : Carlos
--%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    if(request.getParameter("login") != null) {
        session.setAttribute("USUARIO", request.getParameter("usuario"));
        Pessoa pessoa = new Pessoa(nome, cpf, telefone, email);
        Database.pessoa().add(pessoa);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - WebQuiz</title>
    </head>
    <body>
        <h1>WebQuiz</h1>
        <h2>Login</h2>
        <p>Faça o login ou cadastro para participar do quiz</p>
        <form>
            <label for="usuario">Usuario</label>
            <input name="usuario" type="text" placeholder="Informe o usuario para login" />
            
            <button type="submit" name="login" value="login">Logar</button>
        </form>
    </body>
</html>
