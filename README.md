
# **ERIL — A Language for Execution Admissibility**

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production--Ready-16A34A?style=flat&labelColor=111111" />
  <img src="https://img.shields.io/badge/Governance-Fail--Closed%20by%20Design-DC2626?style=flat&labelColor=111111" />
  <img src="https://img.shields.io/badge/Evidence-Replay--Verifiable-2563EB?style=flat&labelColor=111111" />
  <img src="https://img.shields.io/badge/IP-Public%20Reference%20Surface-7C3AED?style=flat&labelColor=111111" />
</p>

## **What ERIL is**

ERIL (Executable Reference Implementation Language) is a **declarative rule language** used to define whether a system action is allowed to execute.

An ERIL file consists of rules that:

* declare required conditions (`requires`)  
* define failure behavior (`refuse_execution`)  
* mandate evidence production (`emit evidence`)

All rules are evaluated **before execution**.

If a rule cannot be satisfied, the action does not occur.

---

## **Core principle**

**Execution is allowed only if it can be verified.**

---

## **What ERIL does**

For every governed action:

* ✅ If all required conditions are verifiable → execution proceeds  
* ❌ If any condition cannot be verified → execution is refused

In both cases, an **evidence artifact** is produced.

There is:

* no partial success  
* no fallback behavior  
* no execution without verification

---

## **What an ERIL rule looks like**

rule RegulatedDataAccess {

  requires identity.verified  
  requires purpose.bound  
  requires authorization.valid

  on\_violation refuse\_execution  
  emit evidence  
}

---

## **How to read this**

* `requires` → conditions that must be provably true  
* `refuse_execution` → fail‑closed enforcement  
* `emit evidence` → produce a verifiable artifact

This rule does not perform the action.  
It determines whether the action is allowed to occur.

---

## **Execution model**

Every ERIL rule resolves to one of two outcomes:

* **Admissible** → execution proceeds  
* **Not admissible** → execution is refused

Both outcomes produce:

* a deterministic decision  
* a verifiable evidence artifact

---

## **The problem ERIL solves**

Most systems separate intent from execution:

* policies describe expected behavior  
* systems execute regardless  
* verification happens afterward

This leads to:

* unverifiable execution  
* delayed detection of violations  
* reliance on logs and interpretation

ERIL removes this gap by requiring:

**verification before execution**

---

## **Example: Failed Execution (Refusal Path)**

**Action requested:**  
Access regulated dataset `patient_records_v2`

**Rule evaluated:**  
`RegulatedDataAccess`

**Verification results:**

* identity.verified ✅  
* authorization.valid ✅  
* purpose.bound ❌

**Outcome:**  
**EXECUTION REFUSED**

**Evidence artifact:**

{  
  "decision": "REFUSED",  
  "rule": "RegulatedDataAccess",  
  "failed\_requirement": "purpose.bound",  
  "timestamp": "2026-03-14T20:11:42Z",  
  "execution\_hash": "0x7a9f3d…",  
  "signature": "ed25519:4c91ab…",  
  "replayable": true  
}

The action did not occur.  
The refusal is verifiable.

---

## **What ERIL is not**

ERIL is not:

* a general-purpose programming language  
* a system for implementing business logic  
* a monitoring or logging tool  
* a policy engine that can be bypassed

ERIL does not compute results.  
It governs whether computation is permitted.

---

## **Mental model**

Traditional code answers:

“What should the system do?”

ERIL answers:

“Is the system allowed to do this?”

---

## **Evidence**

Every evaluation produces an artifact that is:

* cryptographically verifiable  
* immutable  
* independently replayable

This allows external parties to verify:

“Was this execution admissible under the defined rules?”

without relying on internal system trust.

---

## **Relationship to ERI**

ERIL rules are used within **Executable Reference Implementations (ERIs)**.

An ERI:

* applies ERIL rules to real execution  
* enforces admissibility before execution  
* produces verifiable evidence artifacts

**ERIL defines the rules.**  
**ERIs enforce them.**

---

## **Why this matters**

If a condition is important enough to define, it must be enforced **before execution**.

If enforcement happens afterward, it is not control—it is observation.

ERIL makes admissibility enforceable.

---

## **Closing**

Most systems allow execution and verify later.  
**ERIL requires verification first.**

---

