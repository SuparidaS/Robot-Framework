*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/LoginPageKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
As a user, I want to login success with valid credential
    login with ${username} and ${password} 
    

As a user, I fail to login with invalid credential
    When user login to future skill platform with ${email} and ${invalid_password}
    Then future skill should display display validate login fail message as "กรอกรหัสผ่านไม่ถูกต้อง"