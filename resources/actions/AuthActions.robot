*Settings*
Documentation           Authentication Actions


*Variables*  
${INPUT_EMAIL}      id=email
${INPUT_PASS}       id=password

${MESSAGE_ERROR_PASS}          css=.error >> text=Senha obrigatória
${MESSAGE_ERROR_EMAIL}         css=.error >> text=E-mail obrigatório


*Keywords* 
Go to Login Page
    Go to       ${BASE_URL}

    Wait For Elements State     css=.login-form         visible     5

Fill Credentials
    [Arguments]     ${user}        


    Fill Text       ${INPUT_EMAIL}         ${user}[email]
    Fill Text       ${INPUT_PASS}          ${user}[password]

Submit Credentials
    Click       css=.submit-button >> text=Entrar

User Should Be Logged In 
    [Arguments]         ${user}

    ${element}              Set Variable      css=a[href="/profile"]
    ${expected_fullname}    Set Variable      ${user}[name] ${user}[lastname]

    Wait For Elements State         ${element}   visible       15
    Get Text                        ${element}   equal         ${expected_fullname} 
    

Should Be Type Email
    Get Property       ${INPUT_EMAIL}         type    equal    email



Fill Password
    [Arguments]     ${user}
    Fill Text       ${INPUT_PASS}          ${user}[password]


Fill Email
    [Arguments]     ${user}   
    Fill Text       ${INPUT_EMAIL}          ${user}[email]

Validate email required
    Wait For Elements State         ${MESSAGE_ERROR_EMAIL}
    ...         visible     10

Validate password required

    Wait For Elements State         ${MESSAGE_ERROR_PASS} 
    ...         visible     10

Validate form field
    Wait For Elements State         ${MESSAGE_ERROR_PASS} 
    ...         visible     10
    Wait For Elements State         ${MESSAGE_ERROR_EMAIL}
    ...         visible     10