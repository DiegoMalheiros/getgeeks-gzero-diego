*Settings*   
Documentation       Temp
Library             Collections 

*Test Case* 
Trabalhando com listas 

    @{avengers}         Create List         Tony Stark      Steve Rogers        Peter Parker

    Append To List      ${avengers}     Bruce Banner
    Append To List      ${avengers}     Scott  


    FOR     ${a}       IN       @{avengers}

    Log To Console     ${a}

    END

    @{avengers2}        Create List         Tony Stark      Miss Marvel     Steve Rogers       Bruce Banner     Scott

    Lists Should Be Equal        ${avengers}     ${avengers2} 