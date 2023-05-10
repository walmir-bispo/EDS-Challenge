SELECT AVG(qtde_diag) AS media_diag FROM (
    SELECT COUNT(*) AS qtde_diag
    FROM DIAGNOSTICOS d
    INNER JOIN ATENDIMENTO a ON d.id_atendimento = a.id_atendimento
    WHERE a.tipo_atendimento = 'U'
    GROUP BY d.id_atendimento
)sub_query;