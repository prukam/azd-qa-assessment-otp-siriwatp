# OTP Verification Assessment

## Background

Applicant must verify OTP before proceeding to the eKYC process.

---

## User Story

As an Applicant

I want to verify my OTP

So that I can continue to the eKYC process

---

## Acceptance Criteria

### AC1 - OTP Verification Success

Given applicant is on OTP verification page

When applicant enters a valid OTP

And clicks Verify

Then verification shall be successful

And applicant shall be navigated to the eKYC page

---

### AC2 - Expired OTP

Given applicant is on OTP verification page

When applicant enters an expired OTP

And clicks Verify

Then verification shall fail

And system shall display OTP expired message

---

### AC3 - Invalid OTP

Given applicant is on OTP verification page

When applicant enters an invalid OTP

And clicks Verify

Then verification shall fail

And system shall display invalid OTP message

---

### AC4 - Empty OTP

Given applicant is on OTP verification page

And OTP field is empty

When applicant clicks Verify

Then verification shall fail

And system shall display OTP required message

---

### AC5 - Invalid OTP Format

Given applicant is on OTP verification page

When applicant enters OTP with invalid format

And clicks Verify

Then verification shall fail

And system shall display OTP validation message

---

# Part 1 – Requirement Review

Review the User Story and Acceptance Criteria.

Identify:

- Requirement Gaps
- Assumptions
- Risks

## Candidate Answer

### Requirement Gaps

1. OTP Less than 6 digits
2. OTP More than 6 digits
3. OTP กรอกได้เกิน 6 digits

### Assumptions

1. OTP Less than 6 digits
2. OTP More than 6 digits
3. OTP กรอกได้เกิน 6 digits

### Risks

1. OTP กรอกได้เกิน 6 digits อาจจะทำมีการกรอก OTP เกิน
2.
3.

---

# Part 2 – Additional Acceptance Criteria

If you believe any Acceptance Criteria are missing, propose additional Acceptance Criteria.

Use Given / When / Then format.

## Candidate Answer

### Proposed AC

```gherkin
Given

When

Then
```

---

# Part 3 – Test Scenario Design

Design Test Scenarios for the OTP Verification feature.

For each scenario provide:

- Scenario ID
- Scenario Name
- Related AC

## Candidate Answer

| Scenario ID | Scenario Name | Related AC |
|---|---|---|
| SC-001 | | |
| SC-002 | | |
| SC-003 | | |

---

# Part 4 – Test Case Design

Select at least 3 Scenarios from Part 3.

Create detailed Test Cases including:

- Test Case ID
- Related Scenario
- Preconditions
- Test Data
- Test Steps
- Expected Results

## Candidate Answer

### TC-001

Related Scenario:

Preconditions:

Test Data:

Steps:

1.
2.
3.

Expected Results:

1.
2.
3.

---

### TC-002

Related Scenario:

Preconditions:

Test Data:

Steps:

1.
2.
3.

Expected Results:

1.
2.
3.

---

### TC-003

Related Scenario:

Preconditions:

Test Data:

Steps:

1.
2.
3.

Expected Results:

1.
2.
3.

---

# Part 5 – Automation Assessment

Implement Robot Framework automation tests for the OTP web application under `web/`.

The automation must cover at least the following test cases:

- TC-AUTO-001 Verify OTP Success
- TC-AUTO-002 Verify Expired OTP
- TC-AUTO-003 Verify Invalid OTP
- TC-AUTO-004 Verify Empty OTP
- TC-AUTO-005 Verify OTP Length Validation
- TC-AUTO-006 Verify OTP Numeric Validation

Place all Robot Framework scripts under:

```text
scripts/
```

You may create any folder structure under the `scripts/` directory.

Examples:

```text
scripts/tests/
scripts/resources/
scripts/data/
```

## Candidate Answer

### Automation Scope

Describe what you automated.

### Locator Strategy

Explain:

- Which locators you used
- Why you selected them
- Which locators you avoided

### Wait Strategy

Explain how your script handles delayed UI response.

### Known Limitations

List any limitations or assumptions in your automation.

---

# Part 6 – Pull Request Summary

Provide a short summary that can be used in your Pull Request description.

## Candidate Answer

### Summary

### Covered Test Cases

### Assumptions

### Known Limitations
