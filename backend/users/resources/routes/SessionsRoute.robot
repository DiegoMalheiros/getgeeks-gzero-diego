*Settings*

Documentation       Session Route 

*Keywords*
Post Session
    [Arguments]     ${payload}

    ${response}   POST   
    ...           ${API_USERS}/sessions        
    ...           json=${payload}     
    ...           expected_status=any

    [Return]    ${response}