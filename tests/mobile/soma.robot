*** Settings ***
Library    AppiumLibrary
Resource    ../resources/capabilities.resource

Suite Setup    Sauce Labs Open Application
Test Teardown    Limpar calculadora
Suite Teardown    Close Application

Test Template    Somar dois numeros - 1 digito

*** Test Cases ***
TC001    2    2    4
TC002    0    0    0
TC003    4    3    7
TC004    5    5    10
TC005    3    6    9


*** Keywords ***
Somar dois numeros - 1 digito
    [Arguments]    ${number_1}    ${number_2}    ${result_expected}
    ${n1} =    Set Variable     accessibility_id=${number_1}
    Click Element    ${n1}
    ${plus} =    Set Variable     accessibility_id=plus
    Click Element    ${plus}
    ${n2} =    Set Variable     accessibility_id=${number_2}
    Click Element    ${n2}
    ${equals} =    Set Variable     accessibility_id=equals
    Click Element    ${equals}
    ${result} =    Set Variable     id=com.google.android.calculator:id/result_final
    Element Text Should Be    ${result}    ${result_expected}