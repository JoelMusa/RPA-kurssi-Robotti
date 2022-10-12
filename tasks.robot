*** Settings ***
Documentation       Import car notifications data and create Excel file

Library             RPA.Browser.Selenium    auto_close=${FALSE}
Library             RPA.HTTP
Library             RPA.Excel.Files
Library             RPA.FileSystem


*** Tasks ***
Import car notifications data and create Excel file
    Open nettiauto site and allow cookies
    #Copy the Excel file from computer
    Fill in search field using the data in Excel


*** Keywords ***
Open nettiauto site and allow cookies
    Open Available Browser    https://www.nettiauto.com/
    Wait Until Element Is Visible    id:almacmp-content--layer1
    Click Button    Hyväksy
    Sleep    5sec
#Copy the Excel file from computer
    # Download    "C:\Users\jokke\OneDrive\Desktop\Auton tiedot.xlsx"    overwrite=True

Fill in search field using the data in Excel
    Select From List By Label    id_vehicle_type    Henkilöauto
    Select From List By Label    id_make    Audi
    Wait Until Page Contains    id_model
    #Select From List By Label    id_model    A7
    #Select From List By Label    id_car_type
    Select From List By Label    id_fuel_type    Bensiini
    Select From List By Label    id_gear_type    Automaatti
    #Select From List By Value    pfrom
    # Select From List By Value    pto
    Select From List By Value    yfrom    2011
    Select From List By Value    yto    2020
    Select From List By Label    id_domicile    Suomi
    Submit Form
