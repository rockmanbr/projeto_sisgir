-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Conta (
Id_Conta Texto(1) PRIMARY KEY
)

CREATE TABLE Despesa (
Tipo de Despesa Texto(1),
Id_Conta Texto(1),
Valor Texto(1),
FOREIGN KEY(Id_Conta) REFERENCES Conta (Id_Conta)
)

CREATE TABLE Receita (
Valor Texto(1),
Contribuinte Texto(1),
Tipo de Entrada Texto(1),
Número Recibo Texto(1) PRIMARY KEY,
Id_Departamento Texto(1),
Id_Conta Texto(1),
FOREIGN KEY(Id_Conta) REFERENCES Conta (Id_Conta)
)

CREATE TABLE Secretaria (
Id_Membro Texto(1)
)

CREATE TABLE Administrativo (
Id_Membro Texto(1)
)

CREATE TABLE Financeiro (
Id_Membro Texto(1),
Nome_Fornecedor Texto(1),
Id_Fornecedor Texto(1)
)

CREATE TABLE Membro (
dt_Nascimento Texto(1),
Conjuge Texto(1),
Naturalidade Texto(1),
Nacionalidade Texto(1),
Email Texto(1),
dt_Consagração Texto(1),
dt_batismo_ES Texto(1),
dt_recebimento Texto(1),
Igreja Origem Texto(1),
Motivo da Exclusão Texto(1),
Local de Batismo Texto(1),
EstadoCivil Texto(1),
Motivo da Inclusão Texto(1),
Escolaridade Texto(1),
Cargo na Igreja Texto(1),
dt_Batismo Texto(1),
Sexo Texto(1),
dt_Falecimento Texto(1),
Profissão Texto(1),
Situação Texto(1),
Id_Pessoa Texto(1)
)

CREATE TABLE Fornecedor (
Nome_Fornecedor Texto(1),
cont_fornecedor Texto(1),
insc_municipal Texto(1),
fax_fornecedor Texto(1),
fone_fornecedor Texto(1),
incs_estadual Texto(1),
Tipo_Atividade Texto(1),
email_fornecedor Texto(1),
cel_fornecedor Texto(1),
Id_tp_Fornecedor Texto(1),
url_fornecedor Texto(1),
Id_Fornecedor Texto(1),
Id_Pessoa Texto(1),
PRIMARY KEY(Nome_Fornecedor,Id_Fornecedor)
)

CREATE TABLE Pessoa (
Nome Texto(1),
RG ou CNPJ Texto(1),
Id_Pessoa Texto(1) PRIMARY KEY,
CPF Texto(1)
)

CREATE TABLE Estabelecimento (
dt_operação Texto(1),
Id_Estabelecimento Texto(1),
cnpj_Estabelecimento Texto(1),
Url_Estabelecimento Texto(1),
cel_estabelecimento Texto(1),
fax_estabelecimento Texto(1),
Email_Estabelecimento Texto(1),
fone_Estabelecimento Texto(1)
)

CREATE TABLE Usuário (
Senha Texto(1),
Id_Membro Texto(1) PRIMARY KEY,
Login Texto(1),
Id_Pessoa Texto(1),
FOREIGN KEY(Id_Pessoa) REFERENCES Pessoa (Id_Pessoa)
)

CREATE TABLE Não_membro (
Id_Pessoa Texto(1),
FOREIGN KEY(Id_Pessoa) REFERENCES Pessoa (Id_Pessoa)
)

CREATE TABLE Departamento (
Id_Departamento Texto(1) PRIMARY KEY,
Nome Texto(1),
Id_membro Texto(1),
Id_Pessoa Texto(1),
FOREIGN KEY(Id_Pessoa) REFERENCES Pessoa (Id_Pessoa)
)

CREATE TABLE Patrimônio (
Descricao_Patrimonio Texto(1),
dt_baixa Texto(1),
dt_cadastro Texto(1),
dt_aquisição Texto(1),
Id_num_Serie Texto(1),
Id_Patrimonio Texto(1) PRIMARY KEY,
Chave_Nfe Texto(1),
Venc_Garantia Texto(1),
Id_Fornecedor Texto(1),
Vl_Compra Texto(1),
Id_tp_Aquisição Texto(1),
Id_Conta Texto(1),
Num_Nf Texto(1),
Id_Departamento Texto(1),
FOREIGN KEY(Id_Departamento) REFERENCES Departamento (Id_Departamento)
)

CREATE TABLE Endereço (
Rua Texto(1),
CEP Texto(1),
Bairro Texto(1),
Cidade Texto(1),
UF Texto(1),
Número Texto(1)
)

CREATE TABLE Telefone (
Telefone Texto(1)
)

CREATE TABLE Pertence (
Número Recibo Texto(1),
Id_Departamento Texto(1),
FOREIGN KEY(Número Recibo) REFERENCES Receita (Número Recibo),
FOREIGN KEY(Id_Departamento) REFERENCES Departamento (Id_Departamento)
)

CREATE TABLE Contribui (
Data Texto(1),
Número Recibo Texto(1),
FOREIGN KEY(Número Recibo) REFERENCES Receita (Número Recibo)
)

-- Erro: Nome de tabela duplicado (este erro compromete a integridade referencial)!
CREATE TABLE Contribui (
Data Texto(1),
Número Recibo Texto(1),
FOREIGN KEY(Número Recibo) REFERENCES Receita (Número Recibo)
)

CREATE TABLE Cadastra (

)

ALTER TABLE Secretaria ADD FOREIGN KEY(Id_Membro) REFERENCES Usuário (Id_Membro)
ALTER TABLE Administrativo ADD FOREIGN KEY(Id_Membro) REFERENCES Usuário (Id_Membro)
ALTER TABLE Financeiro ADD FOREIGN KEY(Id_Membro) REFERENCES Usuário (Id_Membro)
ALTER TABLE Financeiro ADD FOREIGN KEY(Id_Fornecedor,,) REFERENCES Fornecedor (Nome_Fornecedor,Id_Fornecedor)
ALTER TABLE Membro ADD FOREIGN KEY(Id_Pessoa) REFERENCES Pessoa (Id_Pessoa)
ALTER TABLE Fornecedor ADD FOREIGN KEY(Id_Pessoa) REFERENCES Pessoa (Id_Pessoa)
