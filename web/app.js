const otpInput = document.querySelector('[data-testid="otp-input"]');
const verifyButton = document.querySelector('[data-testid="verify-button"]');
const result = document.querySelector('[data-testid="otp-result"]');

function setResult(message, type) {
  result.textContent = message;
  result.className = `result ${type || ""}`.trim();
}

function validateOtp(otp) {
  if (!otp) {
    return "OTP is required";
  }

  if (!/^\d+$/.test(otp)) {
    return "OTP must be numeric";
  }

  if (otp.length !== 6) {
    return "OTP must contain 6 digits";
  }

  return null;
}

verifyButton.addEventListener("click", () => {
  const otp = otpInput.value.trim();

  const validationError = validateOtp(otp);

  if (validationError) {
    setResult(validationError, "error");
    return;
  }

  verifyButton.disabled = true;
  setResult("Verifying OTP...", "loading");

  const delay = Math.floor(Math.random() * 10000) + 500;

  setTimeout(() => {
    if (otp === "111111") {
      setResult("Verification Success - Navigate to eKYC", "success");
    } else if (otp === "222222") {
      setResult("OTP Expired", "error");
    } else {
      setResult("Invalid OTP", "error");
    }

    console.log(`OTP: ${otp}, Delay: ${delay}ms`);
    verifyButton.disabled = false;
  }, delay);
});
