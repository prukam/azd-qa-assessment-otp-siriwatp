***Settings***
Library    SeleniumLibrary
Resource   otp_keywork.robot
Resource   otp_locator.robot
Resource   ../data/test_data.robot

***Keywords***
Open Browser OTP Page
    Open Browser    ${URL}  ${BROWSER}   options=add_argument("--incognito")
    Maximize Browser Window

OTP Verification Success
    [arguments]     ${timeout}=10s
    wait Until Element Is Visible  ${LOCATOR_OTP}  ${timeout}
    Input OTP       ${OTP_SUCCESS}

OTP Verification Expired
    [arguments]     ${timeout}=10s
    Wait Until Element Is Visible  ${LOCATOR_OTP}  ${timeout}
    Input OTP       ${OTP_Expired}

OTP Verification Invalid
    [arguments]     ${timeout}=10s
    Wait Until Element Is Visible  ${LOCATOR_OTP}  ${timeout}
    Input OTP       ${OTP_Invalid}

Verification Success
    [arguments]     ${timeout}=10s
    wait Until Element Is Visible  ${Ver_Result}  ${timeout}
    Element Text Should Be  ${Ver_Result}  ${Ver_Success}

Verification Expired
    [arguments]     ${timeout}=10s
    wait Until Element Is Visible  ${Ver_Result}  ${timeout}
    Element Text Should Be  ${Ver_Result}  ${Ver_Expired}

Verification Invalid    
    [arguments]     ${timeout}=10s
    wait Until Element Is Visible  ${Ver_Result}  ${timeout}
    Element Text Should Be  ${Ver_Result}  ${Ver_Invalid}

Validation OTP Empty
    [arguments]     ${timeout}=10s
    wait Until Element Is Visible  ${Ver_Result}  ${timeout}
    Element Text Should Be  ${Ver_Result}  ${Ver_Empty}

Validation OTP Less than 6 Digits
    [arguments]     ${timeout}=10s
    wait Until Element Is Visible  ${Ver_Result}  ${timeout}
    Element Text Should Be  ${Ver_Result}  ${Ver_More_Less_6}

Validation OTP More than 6 Digits
    [arguments]     ${timeout}=10s
    wait Until Element Is Visible  ${Ver_Result}  ${timeout}
    Element Text Should Be  ${Ver_Result}  ${Ver_More_Less_6}

Validation OTP Non-Numeric
    [arguments]     ${timeout}=10s
    wait Until Element Is Visible  ${Ver_Result}  ${timeout}
    Element Text Should Be  ${Ver_Result}  ${Ver_Numeric}

OTP Validation
    [Arguments]    ${otp}  ${timeout}=10s 
    Wait Until Element Is Visible  ${LOCATOR_OTP}  ${timeout}
    Input Text  ${LOCATOR_OTP}  ${otp}

Input OTP
    [Arguments]    ${otp}  ${timeout}=10s 
    Wait Until Element Is Visible  ${LOCATOR_OTP}  ${timeout}
    Input Text  ${LOCATOR_OTP}  ${otp}

Click Verify Button
    [arguments]     ${timeout}=10s
    Wait Until Element Is Visible  ${VERIFY_BUTTON}  ${timeout}
    Click Button  ${VERIFY_BUTTON}
    sleep  15s
    