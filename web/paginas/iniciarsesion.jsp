<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%if (session.getAttribute("NomAnexo") != null && session.getAttribute("CodAnexo") != null) {%>
<div class="bce-block clearfix">
    <div class="bce-blockcontent">
        <div class="bce-square">
            <blockquote>Bienvenido:</blockquote>
            <br clear="all">
            <div style="text-align: left; font-size: 14px;">
             <p><b>Nombre:</b></p><p>${NomAnexo} </p>
            <p><b>N° Admin:</b></p><p>${CodAnexo}</p>
            <br clear="all">
            </div><a href="salir" class="bce-button">Salir</a>  <br clear="all"><br clear="all">
        </div>
        <br clear="all">
        <div class="bce-square">
            <blockquote>Administrar</blockquote>
            <jsp:include page="option_user.jsp" flush="true" />
        </div>
    </div>
</div>
    <%} else {%>
<div class="bce-block clearfix">
    <div class="bce-blockcontent">
        <div class="bce-square">
            <blockquote>Iniciar Sesión</blockquote>
            <form action="LoginServlet" >
                <br clear="all"> 
                <div> <label for="Usuario">Nro. Administrativo</label></div>
                <div class="bce-log" >
                    <input type="text" name="codanexo" autocomplete="off" title="Ingrese su Nro. Administrativo" id="codanexo" MaxLength="9" title="Ingrese su Nro. Administrativo" required required onkeypress="numero()">
                </div>
                <div><label for="documento" >DNI</label></div>
                <div class="bce-log"> <input type="text" name="documento" autocomplete="off"  id="documento" MaxLength="8"  title="Ingrese su Nro. DNI" required required onkeypress="numero()">
                </div>
                <div><label for="password">Contraseña</label> </div>
                <div class="bce-log"> <input type="password" name="password"  id="password" title="Ingrese su contraseña"></div>
                <div class="Acceder"> <br clear="all">
                    <a href="?content=recuperar-clave">Olvido su clave</a><br clear="all"><br clear="all">
                    <a href="?content=registro">Registrese</a> <br clear="all"> <br clear="all">     
                    <input type="submit" class="bce-button bce-button" value="Acceder" name="submit">
                    <br clear="all">  <% if (session.getAttribute("ms") != null) {%>
                    <p class="bce_error">${ms}</p> <% }%>
                </div>
            </form>
            <br clear="all">
        </div>
    </div>
</div>

<%}%>

