SELECT nome, dt_nascimento, cpf, nome_mae, MAX(dt_atualizacao) 
FROM stg_prontuario.PACIENTE 
GROUP BY nome, dt_nascimento, cpf, nome_mae
HAVING COUNT(*) > 1