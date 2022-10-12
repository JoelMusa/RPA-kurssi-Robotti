*** Settings ***
Documentation       Import car notifications data and create Excel file

Library             RPA.Browser.Selenium    auto_close=${FALSE}
Library             RPA.HTTP
Library             RPA.Excel.Files
Library             RPA.FileSystem


*** Tasks ***
Import car notifications data and create Excel file
    Open Browser and allow cookies
    Search nettiauto.com and open the site
    Allow cookies


*** Keywords ***
Open Browser and allow cookies
    Open Available Browser    https://www.google.com/
    Click Button    id:L2AGLb
    Wait Until Page Contains    class:a4bIc
    Input Text    class:a4bIc    https://www.nettiauto.com/

Search nettiauto.com and open the site

Allow cookies
    Wait Until Element Is Visible    id:almacmp-content--layer1
    Click Button    Hyväksy
