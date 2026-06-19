***Variables***
/* URL and Browser */
${URL}          http://localhost:8080/web/otp.html
${BROWSER}      Chrome

/* OTP Test Data */
${OTP_SUCCESS}    111111
${OTP_Expired}    222222
${OTP_Invalid}    333333
${OTP_Less_6}     1234
${OTP_More_Less_6}  1234567
${OTP_Numeric}      Testotp

/* Expected Result */
${Ver_Success}    Verification Success - Navigate to eKYC
${Ver_Expired}    OTP Expired
${Ver_Invalid}    Invalid OTP
${Ver_Empty}        OTP is required
${Ver_More_Less_6}  OTP must contain 6 digits
${Ver_Numeric}      OTP must be numeric