*** Settings ***
resource   ${EXECDIR}/main.robot
library  SeleniumLibrary


*** Variables ***
&{vr}
...  pagina_inicial=//header[contains(@class,'vr-header')]
...  field_pravoce=//a[@class='vr-main-navigation__link vr-main-navigation__link--anchor'][contains(.,'Pra Você')]
...  btn_usar_vr=//a[contains(.,'Onde usar o meu cartão')]
...  mapa=//input[contains(@name,'endereco')]
...  termo=//li/a[contains(text(),'Aceitar termo de privacidade')]

*** keywords ***
estou na pagina inicial 
    Wait Until Element Is Visible    ${vr.pagina_inicial}  

clico na secao pra voce
    Wait Until Element Is Visible    ${vr.field_pravoce} 
    Click Element                    ${vr.field_pravoce}  
   

clico no aceitar termo
    Wait Until Element Is Visible    ${vr.termo}  
    Click Element                    ${vr.termo}

clico no botão onde usar meu vr
    Wait Until Element Is Visible    ${vr.btn_usar_vr} 
    Click Element                    ${vr.btn_usar_vr} 

vejo um mapa do google
   Wait Until Element Is Visible    ${vr.mapa} 
  
    
