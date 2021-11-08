***Settings***     
Documentation      Shered Actions


*** Keywords ***

Modal Content Should Be 
    [Arguments]  ${expected_text}

    ${title}        Set Variable            css=.swal2-title
    ${content}      Set Variable            css=.swal2-html-container


    Wait For Elements State       ${title}          visible         10
    Get Text                      ${title}          equal           Oops...

    Wait For Elements State       ${content}          visible         10
    Get Text                      ${content}          equal          ${expected_text}