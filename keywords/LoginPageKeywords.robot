*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
login with ${username} and ${password}
    CommonKeywords.Wait until element is ready then input text        xpath=//*[@id="identifier"]           ${username}
    CommonKeywords.Wait until element is ready then input text        xpath=/html/body/div[1]/main/div/div[2]/div/form[1]/section/div[2]/div[1]/div/input[1]       ${password}
    CommonKeywords.Wait until element is ready then click element     xpath=//*[@id="method"]

future skill should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text        ${expected_message}

