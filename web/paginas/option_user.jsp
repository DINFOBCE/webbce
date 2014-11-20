<script>
function EstadoCuentaCliente() {
 window.open("EstadoCuentaCliente", "_blank", "toolbar=no, scrollbars=yes, resizable=yes, top=80, left=80, width=850, height=650");
}
</script>
<ul>
<li> <a href="javascript:;"  onclick="EstadoCuentaCliente()" >Ver Estado Cuenta</a></li>
<li> <a href="AnexoWeb?a=listar&id=<%=session.getAttribute("CodAnexo")%>" >Modificar Mis Datos</a></li>
</ul>