<%-- 
    Document   : test.jsp
    Created on : 08/11/2018, 08:57:21
    Author     : Carlos
--%>

<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Teste"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <% 
            String usuario;
            usuario = (String) session.getAttribute("USUARIO");
            if(request.getParameter("send") != null) {
                int soma = 0;
                for(Question q: Db.getMathTest()){
                    String userResp = request.getParameter(q.getTitle());
                    if(request.getParameter(q.getTitle()) != null){
                        if(userResp.equals(q.getAnswer())){
                            soma++;
                        } 
                    }
                }
                
                double average = ((double) soma / 10);
                
                Teste teste = new Teste(usuario, average);
                Db.teste().add(teste);
            }
        %>
    </head>
    <body>
        <h1>Quiz</h1>
        <hr/>
        <form>
            <% for(int c = 0; c < 10; c++){
                Random r = new Random();
                Integer num = r.nextInt(Db.getMathTest().size());
                while(Db.listaNum().contains(num)){
                    num = r.nextInt(Db.getMathTest().size());
                }
                Question quest = Db.getMathTest().get(num); %>
                <h3><%=c%><%=quest.getTitle()%></h3>
                <% for(int i = 0; i < quest.getAlternatives().length; i++){ %>
                    <input type="radio" name="<%=quest.getTitle()%>" value="<%=quest.getAlternatives()[i]%>" />
                    <%=quest.getAlternatives()[i]%>
                <% } %>
                <hr/>
            <% 
                Db.listaNum().add(num);
            }
                Db.listaNumClear();
            %>
            <button type="submit" name="send" value="resp">Enviar</button>
        </form>
    </body>
</html>
 