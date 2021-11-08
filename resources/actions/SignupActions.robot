*Settings*
Documentation           Sinup Actions
Library                 Browser

*Keywords*  

Go to Signup Form
    Go to       ${BASE_URL}/signup
    Wait For Elements State     css=.signup-form        visible         15

Fill Signup Form
    [Arguments]         ${user}

    Fill Text            id=name        ${user}[name]
    Fill Text            id=lastname    ${user}[lastname]
    Fill Text            id=email       ${user}[email]
    Fill Text            id=password    ${user}[password]

Submit Signup Form
    Click       css=.submit-button >> text=cadastrar


User Shold Be Registered

    ${expect_message}       Set Variable     css=p >> text=Agora você faz parte da Getgeeks. Tenha uma ótima experiência.

    Wait for Elements State         ${expect_message}       visible         30



Alert Span Should Be
    [Arguments]   ${expected_alert}

    Wait For Elements State     css=span[class=error] >> text=${expected_alert}        
    ...                         visible     10

Alert Spans Should Be
    [Arguments]         ${expected_alerts}

    @{got_alerts}           Create List

    ${spans}                Get Elements        xpath=//span[@class="error"]

    FOR     ${span}     IN          @{spans}

    ${text}                Get text                     ${span}
    Append To List         ${got_alerts}                ${text}

    END   

    Lists Should Be Equal       ${expected_alerts}          ${got_alerts}