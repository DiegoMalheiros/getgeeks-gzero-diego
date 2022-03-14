*Settings*
Documentation       Users Route Test Suite

Library               RequestsLibrary
Resource            ${EXECDIR}/resources/Base.robot

*Test Cases* ***
Add new user
    ${payload}  Factory New User

    ${response}    Post User        ${payload}
    Status Should Be        201     ${response}