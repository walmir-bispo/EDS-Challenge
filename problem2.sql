INSERT INTO stg_prontuario.PACIENTE (nome, dt_nascimento, cpf, nome_mae, dt_atualizacao)
SELECT nome, dt_nascimento, cpf, nome_mae, dt_atualizacao
FROM (
  SELECT nome, dt_nascimento, cpf, nome_mae, dt_atualizacao FROM stg_hospital_a.PACIENTE
  UNION ALL
  SELECT nome, dt_nascimento, cpf, nome_mae, dt_atualizacao FROM stg_hospital_b.PACIENTE
  UNION ALL
  SELECT nome, dt_nascimento, cpf, nome_mae, dt_atualizacao FROM stg_hospital_c.PACIENTE
) AS todas_as_tabelas;

