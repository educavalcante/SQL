select cr.Prefixo, n.DescNatureza, s.nome, cr.Valor, cr.ValorPago, cr.Competencia
 from ContasReceber cr 
 join Socios s on s.CodSocio = cr.codsocio left 
 join Natureza n on  n.CodNatureza = cr.codnatureza
where nome in ('xxxx') and cr.valorpago < cr.valor;


em aberto por socio ==============
select cr.Prefixo, n.DescNatureza, s.nome, cr.Valor, cr.ValorPago, cr.Competencia, s.ativo
 from ContasReceber cr 
 join Socios s on s.CodSocio = cr.codsocio left 
 join Natureza n on  n.CodNatureza = cr.codnatureza
where s.ativo <> 'N' and cr.valorpago < cr.valor;


========
 /*vendas lanche */
select DataEmissao, PagadorLivre, s.nome, Competencia, Valor, ValorPago, cr.CodNatureza, n.DescNatureza
 from ContasReceber cr 
 left join Socios s on s.CodSocio = cr.codsocio
 join Natureza n on n.CodNatureza = cr.CodNatureza
 where cr.CodNatureza= 171 AND DataEmissao > '1.1.2022'
 order by cr.CodContasReceber desc
 
 /*natureza 171*/

