@AbapCatalog.sqlViewName: 'ZV_CLIENTES_2067'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZCDS_CLIENTES_2067 as select from ztb_cliente_2067 as clientes
inner join ztb_cln_lib_2067 as clnts on clnts.id_cliente = clientes.id_cliente
{

key id_libro as IdLibro,
key clientes.id_cliente as IdCliente, 
key tipo_acceso as Acceso,  
nombre as Nombre,
apellidos as Apellidos,
email as Email,
url as ImagenLibro,
concat_with_space( nombre, apellidos, 1 ) as NombreCompleto
    
}
