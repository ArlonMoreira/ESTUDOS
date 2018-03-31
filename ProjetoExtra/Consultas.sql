/* Registro de Internação*/

SELECT
    INTERNA.nregistro,
    FICHAS.nroficha,
    FICHAS.convenio_numero_cns,
    FICHAS.dtnascimento,
    FICHAS.sexo,
    FICHAS.ecivil,
    FICHAS.dtcadastro,
    INTERNA.codigo_oficial_cid_pri,
    INTERNA.codigo_oficial_cid_seg,
    INTERNA.codigo_oficial_cid_alta,
    INTERNA.cid10_obito,
    ih_procs.codigo_ih,
    NATRATA.nome,
    INTERNA.dtinternacao,
    INTERNA.horainternacao,
    INTERNA.dtalta,
    INTERNA.horaalta,
    INTERNA_LOCAL.codigo,
    INTERNA_LOCAL.descricao,
    INTERNA_LOCAL_LEITO.codigo,
    INTERNA_LOCAL_LEITO.descricao,
    ih_tipo_leito.descricao as tipo_leito
FROM INTERNA
left JOIN ih_procs ON (INTERNA.codigo_ih_procs = ih_procs.codigo)
left JOIN NATRATA ON (NATRATA.codigo = INTERNA.codigo_natrata)
inner join FICHAS ON (FICHAS.nroficha = INTERNA.nficha)
inner join INTERNA_LOCAL_LEITO ON (INTERNA_LOCAL_LEITO.codigo = INTERNA.codigo_interna_local_leito)
inner join INTERNA_LOCAL ON (INTERNA_LOCAL.codigo = interna_local_leito.codigo_interna_local)
left join  ih_procs_tipo_leito ON (ih_procs.codigo = ih_procs_tipo_leito.codigo_ih_procs)
left join ih_tipo_leito ON (ih_tipo_leito.codigo = ih_procs_tipo_leito.codigo_ih_tipo_leito)
where INTERNA.CODIGO_IH_PROCS = 13899




/*TABELAS IMPORTANTES:
FICHAS
INTERNA
IH_TIPO_LEITO
IH_UNIDADES_SUS
IH_PROCS