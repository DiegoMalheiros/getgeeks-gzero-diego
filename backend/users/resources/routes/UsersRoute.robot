*Settings*

Documentation       Users Route 

*Keywords*
Post User
    [Arguments]     ${payload}  


    ${response}   POST   
    ...           ${API_USERS}/users       
    ...           json=${payload}     
    ...           expected_status=any

    [Return]    ${response}