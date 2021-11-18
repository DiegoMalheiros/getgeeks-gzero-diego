*Settings*
Documentation           BeGeek Test Suite

Resource                  ../resources/Base.robot

Test Setup          Start Session
Test Teardown       Finish Session

*Test Cases*
Be a geek

    [tags]      smoke

    ${user}         Factory User        be_geek


    Do Login                    ${user}    
    Go To Geek Form
    Fill Geek Form              ${user}[geek_profile]
    Submit Geek Form
    Geek Form Should Be Sucess
    Sleep        10


