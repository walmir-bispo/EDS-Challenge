SELECT *
FROM stg_prontuario.PACIENTE
WHERE cpf IN (
  SELECT cpf
  FROM stg_prontuario.PACIENTE
  GROUP BY cpf
  HAVING count(*) > 1
)
ORDER BY nome;