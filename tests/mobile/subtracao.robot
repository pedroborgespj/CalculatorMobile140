*** Settings ***
Library    AppiumLibrary
Resource    ../resources/capabilities.resource

Suite Setup    Sauce Labs Open Application
Test Teardown    Limpar calculadora
Suite Teardown    Close Application

Test Template    Subtracao dois numeros - 1 digito

*** Test Cases ***
TC001    7    2    5
TC002    0    0    0
TC003    9    3    6
TC004    4    3    1
TC005    6    6    0


*** Keywords ***
Subtracao dois numeros - 1 digito
    [Arguments]    ${number_1}    ${number_2}    ${result_expected}
    ${n1} =    Set Variable     accessibility_id=${number_1}
    Click Element    ${n1}
    ${minus} =    Set Variable     accessibility_id=minus
    Click Element    ${minus}
    ${n2} =    Set Variable     accessibility_id=${number_2}
    Click Element    ${n2}
    ${equals} =    Set Variable     accessibility_id=equals
    Click Element    ${equals}
    ${result} =    Set Variable     id=com.google.android.calculator:id/result_final
    Element Text Should Be    ${result}    ${result_expected}