/* Problem 1 */
CREATE SCHEMA stg_prontuario;

CREATE TABLE stg_prontuario.PACIENTE (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    dt_nascimento DATE,
    cpf BIGINT,
    nome_mae VARCHAR(100),
    dt_atualizacao TIMESTAMP DEFAULT NOW()
);
