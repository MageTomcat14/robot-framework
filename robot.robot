* Settings ***
Library    testing.py
Library    String
Resource   test_env.resource
Library    Collections


*** Test Cases ***

ConnectionToBrocker
    ${CLIENT}   connect to client and MQTT
    Set Global Variable    ${CLIENT}
    Log    ${CLIENT}

# create the template to control IO    
IO_From_PICO_SET
    [Tags]    OK
    [Template]    GPIO_SET 
    ${0}    ${1}   

# # one test case for controling all IO's
*** Keywords ***
GPIO_SET
    [Arguments]  ${GPIO_OUT}    ${GPIO_IN}

    writting DIRECTION of IO ${CLIENT} ${GPIO_OUT} ${GPIO_IN}
    setting pulls ${CLIENT} ${GPIO_OUT} ${GPIO_IN} 
    setting pulling cycle ${CLIENT} ${GPIO_OUT} ${GPIO_IN}
    setting active state low ${CLIENT} ${GPIO_OUT} ${GPIO_IN}
    writting to output and getting the input ${CLIENT} ${GPIO_OUT} ${GPIO_IN}



    # writting DIRECTION & STATE of output ${CLIENT} ${GPIO_OUT} ${GPIO_IN}


























    # set the direction of the GPIO ${CLIENT} ${GPIO_OUT} ${GPIO_IN}
#     # set the pull direction of the GPIO ${CLIENT} ${GPIO_OUT} ${GPIO_IN}
#     # # set the pulling cycle direction of the GPIO ${CLIENT} ${GPIO_OUT} ${GPIO_IN}
#     # # set the active of state ${CLIENT} ${GPIO_OUT} ${GPIO_IN}
#     # # set the active low of state ${CLIENT} ${GPIO_OUT} ${GPIO_IN}
#     # # set the pulling cycle state ${CLIENT} ${GPIO_OUT} ${GPIO_IN}
    
    


    # Set Global Variable    ${d1}
    # getting DIRECTION & STATE of output ${CLIENT} ${GPIO_IN} ${d1}

# # one test case for controling all IO's
# *** Keywords ***
# GPIO_GET
#     [Arguments]  ${GPIO_OUT}    ${GPIO_IN}

    