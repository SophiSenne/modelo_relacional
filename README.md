<div align="center">
<sub>Figura 1 - Modelo Relacional</sub>
<img src="arquiteturaUm.drawio.png" width="100%">
<sup>Fonte: Material produzido pela autora (2024)</sup>
</div>

# Abadono Zero

- #### Descrição: 
&nbsp;&nbsp;&nbsp;&nbsp;O projeto consiste no desenvolvimento de uma aplicação web dedicada à coleta de informações sobre o comportamento dos tutores em relação à adoção, compra e eventual abandono de cães. Por meio de um formulário de fácil acesso, os tutores poderão fornecer dados relevantes, enquanto a aplicação os armazena e organiza em uma base de dados estruturada. Dessa forma, essas informações serão essenciais para compreender as razões por trás do abandono de animais a partir de uma análise detalhada das condições dos tutores envolvidos. 
- #### Ferramenta: 
&nbsp;&nbsp;&nbsp;&nbsp;A ferramenta utilizada foi o [draw.io](https://app.diagrams.net/).
- ### :
<div align="center">
<sub>Quadro 01 - Entidades</sub>
</div>
<div align="center">

| Entidade | Descrição | Atributos |
| ------- | -------- | ------------|
| Usuários   | Armazena os dados essenciais para a realização do cadastro e a chave para o próximo formulário.    | ID, data de cadastramento, email, senha, data de nascimento, foreign key formulário |
| Formulário 0   | Armazena os dados do formulário inicial com os dados do usuário e a chave para qual será o formulário que ele irá responder em seguida.    | ID, nome, nome social, celular, país, estado/região, cidade, bairro, escolaridade, constituição familiar, faixa de renda familiar, tipo de moradia, número de moradores da casa, foreign key formulários|
| Formulário 1 (presente)  | Armazena os dados correspondentes às perguntas feitas a quem possui cachorro.    | ID, Pergunta 1, Pergunta 2, ...|
| Formulário 2 (passado)   | Armazena os dados correspondentes às perguntas feitas a quem já teve algum cachorro.    | ID, Pergunta 1, Pergunta 2, ...|
| Formulário 3 (futuro) | Armazena os dados correspondentes às perguntas feitas a quem quer ter cachorro.    | ID, Pergunta 1, Pergunta 2, ...|
| Formulário 4 (null)  | Armazena os dados correspondentes às perguntas feitas a quem não tem e não quer ter cachorro.    | ID, Pergunta 1, Pergunta 2, ...|

- #### Infraestrutura:
&nbsp;&nbsp;&nbsp;&nbsp;Os dados da aplicação serão armazenados em um Banco de Dados PostgreSQL, o qual será conectado à camada Model da arquitetura MVC, ao disponibilizar a essa camada os dados estruturados nela. Para que o usuário acesse a camada View, ele utilizará um browser, o que facilita o acesso, por ser uma ferramenta comumente disponível e por não precisar realizar a instalação de aplicações extras.


