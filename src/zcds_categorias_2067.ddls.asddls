@AbapCatalog.sqlViewName: 'ZV_CATEGO_2067'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_CATEGORIAS_2067 as select from ztb_catego_2067
{

key bi_categ as BiCateg,
descripcion as Descripcion
    
}
