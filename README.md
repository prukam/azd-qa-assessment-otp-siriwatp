# AZD QA Automation Assessment

## Objective

This assessment evaluates:

- Requirement Review
- Test Scenario Design
- Test Case Design
- Automation Skills
- Git & Pull Request Practices

---

## Repository Structure

```text
azd-qa-automation-assessment-template/

├── README.md
├── docs/
│   └── otp.md
├── web/
│   ├── otp.html
│   ├── style.css
│   └── app.js
└── scripts/
```

---

## Instructions

1. Review and answer the assessment in `docs/otp.md`.
2. Review the OTP web application under `web/`.
3. Implement Robot Framework automation scripts under `scripts/`.
4. Commit your work using meaningful commit messages.
5. Create a Pull Request from your feature branch into your main branch.

---

## Test Environment

The sample web application is located under:

```text
web/
```

Run it using a local web server from the repository root:

```bash
python -m http.server 8080
```

Then open:

```text
http://localhost:8080/web/otp.html
```

---

## Test Data

| OTP | Expected Result |
|---|---|
| `111111` | `Verification Success - Navigate to eKYC` |
| `222222` | `OTP Expired` |
| `333333` | `Invalid OTP` |

---

## Validation Rules

OTP:

- Required
- Numeric only
- Exactly 6 digits

Expected validation messages:

| Input | Expected Result |
|---|---|
| Empty | `OTP is required` |
| Less than 6 digits | `OTP must contain 6 digits` |
| More than 6 digits | `OTP must contain 6 digits` |
| Contains non-numeric characters | `OTP must be numeric` |

---

## Automation Notes

The web application intentionally contains implementation details that may impact automation stability.

Please design your automation approach accordingly.

Expected considerations:

- Stable locator strategy
- Explicit wait strategy
- Avoid unnecessary hard-coded sleeps
- Reusable keywords
- Clear assertions
- Maintainable folder structure under `scripts/`

---

## Submission Checklist

Before submitting, ensure that:

- `docs/otp.md` has been answered.
- Robot Framework scripts are placed under `scripts/`.
- Your PR description explains what you implemented.
- Your assumptions and known limitations are documented.
