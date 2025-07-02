***Settings***
Library    SeleniumLibrary

***Variables***
${BROWSER}         Chrome
${FRONTEND_URL}    https://front.serverest.dev/

***Keywords***
Open Browser To Login Page
    Open Browser    ${FRONTEND_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    id=email

Close Browser Session
    Close Browser
Open New Browser For Suite
    Open Browser    ${FRONTEND_URL}    ${BROWSER}
    Maximize Browser Window