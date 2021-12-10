*Settings*   
Documentation           Login test suite

Resource                  ../resources/Base.robot
Test Setup                Start Session
Test Teardown             After Test

*Test Cases*
User login

    ${user}     Factory User    login


    Go to Login Page
    Fill Credentials       ${user}      
    Submit Credentials
    User Should Be Logged In     ${user} 

Incorret Pass
    [Tags]   i_pass

    ${user}         Create Dictionary           email=papito@hotmail.com    password=abc123
    
    Go to Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Modal Content Should Be      Usuário e/ou senha inválidos.

User not found 
    [Tags]       user_404

    ${user}         Create Dictionary           email=papito@404.net    password=abc123
    
    Go to Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Modal Content Should Be      Usuário e/ou senha inválidos.


Incorret Email
    [Tags]      i_email

    ${user}         Create Dictionary           email=papito.com.br    password=abc123
    
    Go to Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Should Be Type Email

