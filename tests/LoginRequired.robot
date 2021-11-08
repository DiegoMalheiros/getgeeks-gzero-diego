*Settings*   
Documentation           Login Field Required RTest Suite 

Resource                  ../resources/Base.robot
Test Setup                Start Session
Test Teardown             Finish Session

*Test Cases*
Email Required

    [Tags]      email_req

    ${user}         Create Dictionary              email=tony@stark.com    password=abc123


    Go to Login Page
    Fill Password       ${user}
    Submit Credentials
    Validate email required

Password Required
    [Tags]      pass_req

    ${user}         Create Dictionary              email=tony@stark.com    password=abc123

    Go to Login Page
    Fill Email          ${user}
    Submit Credentials
    Validate password required

Field Required
    [Tags]      field_req

    Go to Login Page
    Submit Credentials
    Validate form field