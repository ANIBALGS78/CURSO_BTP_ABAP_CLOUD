@AbapCatalog.sqlViewName: 'ZV_CL_LIB_2067'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ventas'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_CLTNS_LIB_2067 as select from ztb_cln_lib_2067
{
 key id_libro as IdLibro,
 count(distinct id_cliente) as ventas    
}
group by id_libro
