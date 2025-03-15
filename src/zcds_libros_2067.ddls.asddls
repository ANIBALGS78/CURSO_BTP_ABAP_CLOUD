@AbapCatalog.sqlViewName: 'ZV_LIBROS_2067'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZCDS_LIBROS_2067 as select from ztb_libros_2067 as libros
inner join ZCDS_CATEGORIAS_2067 as categoria on libros.bi_categ = categoria.BiCateg
left outer join ZCDS_CLTNS_LIB_2067 as ventas on libros.id_libro = ventas.IdLibro 
association [0..* ] to ZCDS_CLIENTES_2067 as _Clientes on $projection.IdLibro = _Clientes.IdLibro
{

key libros.id_libro as IdLibro,
    titulo as Titulo,
    libros.bi_categ as BiCateg,
    autor as Autor,
    editorial as Editorial,
    idioma as Idioma,
    paginas as Paginas,
    @Semantics.amount.currencyCode: 'Moneda'
    precio as Precio,
    case 
    when ventas.ventas < 1 then 0
    when ventas.ventas = 1 then 1
    when ventas.ventas = 2 then 2
    when ventas.ventas > 2 then 3
    else 0
    end as Ventas,
    @Semantics.currencyCode: true
    moneda as Moneda,
    formato as Formato,
    url as ImagenLibro,
    _Clientes
    
}
