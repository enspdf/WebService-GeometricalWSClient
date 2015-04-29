<%-- 
    Document   : index
    Created on : 26-abr-2015, 11:31:35
    Author     : shackox
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="boot/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <style type="text/css">
            html
            {
                position: relative;
                top: 225px;
            }
        </style>
    <center>
        <h1 style="font-size: 100px;">Circle area</h1>
        <form action="Area.jsp" method="GET">
            <input type="text" name="txtRinput" value="" placeholder="Insert a value" />
            <input class ="btn btn-danger"type="submit" value="Calculate" />
        </form>
    </center>
        
        <%-- start web service invocation --%><br>
    <%
    try {
	circle1.WScircle_Service service = new circle1.WScircle_Service();
	circle1.WScircle port = service.getWScirclePort();
	 // TODO initialize WS operation arguments here
	java.lang.Double r = Double.valueOf(request.getParameter("txtRinput"));
	// TODO process result here
	java.lang.Double result = port.area(r);
        
        if (r <= 0) {
                
                out.println("Can't be minor or equals that 0    ");
            
            }
        else{
            out.println("<center style='font-size: 30px;'>");
            out.println("Area of the circle is = "+result);
            out.println("</center>");
        }
        
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%>
    <script src="boot/js/bootstrap.js" type="text/javascript"></script>
    <script src="boot/js/jquery-2.1.1.js" type="text/javascript"></script>
    </body>
</html>
