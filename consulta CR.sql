select cr.Prefixo, n.DescNatureza, s.nome, cr.Valor, cr.ValorPago, cr.Competencia
 from ContasReceber cr 
 join Socios s on s.CodSocio = cr.codsocio left 
 join Natureza n on  n.CodNatureza = cr.codnatureza
where nome in ('xxxx') and cr.valorpago < cr.valor;
