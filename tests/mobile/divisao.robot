*** Settings ***
Library    AppiumLibrary
Resource    ../resources/capabilities.resource

Suite Setup    Sauce Labs Open Application
Test Teardown    Limpar calculadora
Suite Teardown    Close Application

Test Template    Divisao dois numeros - 1 digito

*** Test Cases ***
TC001    7    1    7
TC002    0    3    0
TC003    4    2    2
TC004    9    3    3
TC005    8    4    2

*** Keywords ***
Divisao dois numeros - 1 digito
    [Arguments]    ${number_1}    ${number_2}    ${result_expected}
    ${n1} =    Set Variable     accessibility_id=${number_1}
    Click Element    ${n1}
    ${divide} =    Set Variable     accessibility_id=divide
    Click Element    ${divide}
    ${n2} =    Set Variable     accessibility_id=${number_2}
    Click Element    ${n2}
    ${equals} =    Set Variable     accessibility_id=equals
    Click Element    ${equals}
    ${result} =    Set Variable     id=com.google.android.calculator:id/result_final
    Element Text Should Be    ${result}    ${result_expected}