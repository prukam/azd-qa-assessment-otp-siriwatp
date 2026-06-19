*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/otp_keywork.robot

Test Setup        Open Browser OTP Page
Test Teardown     Close Browser

***Test Cases***
AC1 - OTP Verification Success
    OTP Verification Success
    Click Verify Button
    Verification Success

AC2 - OTP Verification Expired
    OTP Verification Expired
    Click Verify Button
    Verification Expired

AC3 - OTP Verification Invalid
    OTP Verification Invalid
    Click Verify Button
    Verification Invalid

AC4 - Validation OTP Empty
    Click Verify Button
    Validation OTP Empty

# AC5 - Validation OTP Less than 6 Digits
#     OTP Validation
#     Click Verify Button
#     Validation OTP Less than 6 Digits

# # AC6 - Validation OTP More than 6 Digits
# #     Click Verify Button
# #     Validation OTP More than 6 Digits

# # AC7 - Validation OTP Non-Numeric
# #     Click Verify Button
# #     Validation OTP Non-Numeric
