*** Settings ***
resource  ${EXECDIR}/main.robot

Suite Setup   abrir site
Suite Teardown   fechar navegador

*** Test Case ***
Cenário 1: realizar login no site VR
  Dado que estou na pagina inicial 
  Quando clico na secao pra voce
  E clico no aceitar termo
  E clico no botão onde usar meu vr
  Então vejo um mapa do google 