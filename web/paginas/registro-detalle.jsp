<%@page import="Dao.AnexoWeb"%>
<%@page import="java.util.List"%>
<% 
 if( session.getAttribute("Admin") != null){
        if(session.getAttribute("lstaAnexo_deta") != null)
    {
List<AnexoWeb> lstaAnexo_deta = (List<AnexoWeb>)session.
getAttribute("lstaAnexo_deta");
AnexoWeb   anexo = lstaAnexo_deta.get(0) ;
HttpSession sesion = request.getSession();
sesion.setMaxInactiveInterval(60);     
  %>
 <br clear="all">
  <article class="bce-regis" >
      <form name="upddatos" id="upddatos" action="AnexoWeb?a=listar"  method="post" >
  <div id="muestra">
      <br clear="all"><br clear="all">
       <p></p>
          <H5>DETALLE DE REGISTRO BASAR CENTRAL DEL EJ�RCITO DEL PER�</H5>
          <p></p>
           <br clear="all">
    <fieldset>
        <input type="hidden" name="txtopt" id="txtopt" value="upd" >
<input type="hidden" name="TxtAdmin" ID="TxtAdmin"  value="<%=anexo.getCodAnexo()%>" >
<table class="bce-table" >
  <tr>
    <th scope="row">Nro. Administrativo:</th>
    <td><%=anexo.getCodAnexo()%></td>
  </tr>
  <tr>
    <th scope="row">Apellidos:</th>
    <td><%=anexo.getApellidos()%></td>
  </tr>
  <tr>
    <th scope="row">Nombres:</th>
    <td><%=anexo.getNombres()%></td>
  </tr>
  <tr>
    <th scope="row">Direccion:</th>
    <td><%=anexo.getDireccion()%></td>
  </tr>
  <tr>
    <th scope="row">DNI:</th>
    <td><%=anexo.getDocumento()%></td>
  </tr>
  <tr>
    <th scope="row">Telefono:</th>
    <td><%=anexo.getTelefono()%></td>
  </tr>
  <tr>
    <th scope="row">Celular</th>
    <td><%=anexo.getCelular()%></td>
  </tr>
  <tr>
    <th scope="row">RPM/RPC:</th>
    <td><%=anexo.getRpm_rpc()%></td>
  </tr>
  <tr>
    <th scope="row">Correo:</th>
    <td><%=anexo.getEmail()%></td>
  </tr>
  <tr>
    <th scope="row">Pregunta de Seguridad:</th>
    <td><%=anexo.getPreguntaSeguridad()%></td>
  </tr>
  <tr>
    <th scope="row">Palabra Clave:</th>
    <td><%=anexo.getPalabraClave()%></td>
  </tr>
  <tr>
    <th scope="row">FechaHora:</th>
    <td><%=anexo.getFechaHora()%></td>
  </tr>
    <tr>
    <th scope="row">Contrase�a:</th>
    <td>*****************************</td>
  </tr>
</table>
</fieldset>
 <br clear="all"><br clear="all"> 
<p>
  <b> NOTA:</b> Los datos registrados en la parte superior le servir�n como<br/> evidencia del registro, cualquier cambio de datos comun�quese <br/>con departamento de CREDITO.
     </p>
  <p></p>  
  </div>
  <br clear="all">
<input type="button" class="bce-button" value="Imprimir" onclick="javascript:imprSelec('muestra');function imprSelec(muestra)
{var ficha=document.getElementById(muestra);var ventimp=window.open(' ','popimpr');ventimp.document.write(ficha.innerHTML);ventimp.document.close();ventimp.print();ventimp.close();};" />
&nbsp; <a href="salir" class="bce-button">Finalizar</a>
</form>          
  <br clear="all">
  </article>  
<script type="text/javascript">
{
if(history.forward(1))
location.replace(history.forward(1))
}
</script>
<%
     }
}else{%>
  <script>window.location="/webbce";</script>
   <%
 }        
  %>