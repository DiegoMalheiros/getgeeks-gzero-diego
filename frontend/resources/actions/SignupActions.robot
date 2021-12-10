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

