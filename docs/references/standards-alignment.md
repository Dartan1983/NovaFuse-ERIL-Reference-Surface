# ERIL‑Lexicon‑v1.0
## NovaFuse Executable Reference Implementation Language — Lexicon

Reading Guide — Visual Markers  
The following visual markers are used throughout this lexicon to improve readability while preserving technical rigor:

📘 ERIL Definition — Canonical term definition  
🔑 Critical Aspects — Non‑negotiable properties  
🧪 Measurement & Validation Tools — How the property is tested  
📊 Validation Metrics — Quantitative success criteria  
🧬 Example Applications — Concrete instantiations  
✨ Key Insight — Human‑level intuition anchor  

Emoji Placement Rules  
Emojis appear only in subsection headers  
Exactly one emoji per subsection  
Emojis are never used inline within sentences  
Emojis are not used in:
ERIL Formalization  
Invariant specifications  
Conformance statements  
Each emoji has a fixed semantic meaning across the entire lexicon  

---

## Letter A — Authority, Admissibility & Atomicity

Admissibility (ERIL)

📘 ERIL Definition:
Admissibility ≡ Permission to Proceed ≡ Binary Execution Eligibility

(See Governance Boundary, Evidence Requirement)

🔑 Admissibility Has 3 Critical Aspects
| Dimension | Description |
|---|---|
| Binary State | Exactly one of {PERMITTED, NOT PERMITTED} |
| Definition‑Bound | Determined solely by the ERIL Definition under evaluation |
| Evidence‑Required | Permission must be supported by recorded evaluation results |

🧪 Measurement & Validation Tools
- Deterministic admissibility evaluation (same inputs → same result)
- Evidence artifact presence and completeness checks
- Replay consistency checks against recorded inputs

📊 Validation Metrics
| Metric | Description | Benchmark |
|---|---|---|
| Binary Output | Exactly one of {PERMITTED, NOT PERMITTED} | Always |
| Missing Evidence | Permission granted without required evidence | 0 |
| Replay Consistency | Replay matches original admissibility | 100% |

🧬 Example Applications
| Domain | Admissibility Represents | Concrete Implementation |
|---|---|---|
| Governance | “May we proceed?” | pre‑execution gate |
| Compliance | “Is this allowed?” | policy admission gate |
| Security | “Is this authorized?” | access admission gate |

✨ Key Insight:
Admissibility is not confidence. It is permission.

---

Admissibility Evaluation

📘 ERIL Definition:
Admissibility Evaluation ≡ Deterministic Pre‑Execution Decision ≡ Permit‑or‑Refuse Computation

(See Admissibility, Refusal Condition)

🔑 Admissibility Evaluation Has 3 Critical Aspects
| Dimension | Description |
|---|---|
| Pre‑Execution | Occurs before any side effect or external release |
| Deterministic | Same inputs and definition → same outcome |
| Total | Always returns a decision; no “unknown” escape hatch |

🧪 Measurement & Validation Tools
- Determinism harness (repeat evaluation)
- Input completeness validation
- Evidence requirement validation checks

📊 Validation Metrics
| Metric | Description | Benchmark |
|---|---|---|
| Totality | Evaluation always returns {PERMIT, REFUSE} | 100% |
| Determinism | Same inputs → same outcome | 100% |
| Side‑Effect Leakage | Any outward change during evaluation | 0 |

🧬 Example Applications
| Domain | Evaluation Represents | Concrete Implementation |
|---|---|---|
| Systems | admissibility decision | deterministic gate function |
| AI | output release decision | admit/refuse before publish |
| Audit | recordable governance event | evaluation result artifact |

✨ Key Insight:
Governance happens at evaluation time, not after execution.

---

## Letter E — Evidence & Enforcement

Evidence Requirement

📘 ERIL Definition:
Evidence Requirement ≡ Required Proof of Process ≡ Mandatory Artifact Obligation

(See Evidence Model, Replay Semantics)

🔑 Evidence Requirement Has 3 Critical Aspects
| Dimension | Description |
|---|---|
| Mandatory | Required evidence must be produced for a valid execution |
| Structural | Specifies artifact type and required fields, not narrative |
| Enforcing | Missing evidence invalidates the governed transition |

🧪 Measurement & Validation Tools
- Schema validation against evidence schema
- Presence checks for required artifacts
- Integrity checks over referenced identifiers and hashes

📊 Validation Metrics
| Metric | Description | Benchmark |
|---|---|---|
| Required Fields Present | Evidence fields missing | 0 |
| Schema Validity | Evidence fails schema | 0 |
| Evidence Gating | Transition occurs without evidence | 0 |

🧬 Example Applications
| Domain | Evidence Requirement Represents | Concrete Implementation |
|---|---|---|
| Compliance | “Show me proof it followed the process” | signed evidence artifact |
| Security | “No proof → no release” | evidence‑gated output |
| Governance | “Decision must be auditable” | append to evidence stream |

✨ Key Insight:
In ERIL, evidence is not documentation. Evidence is permission to be real.

---

Evidence Model

📘 ERIL Definition:
Evidence Model ≡ Structural Shape of Proof ≡ Replay‑Readable Artifact Contract

(See Evidence Requirement, Replay Semantics)

🔑 Evidence Model Has 3 Critical Aspects
| Dimension | Description |
|---|---|
| Structural | Defines shape, fields, and references |
| Binding | Binds the definition, inputs, and outcome into one artifact |
| Replay‑Readable | Contains enough to independently verify execution |

🧪 Measurement & Validation Tools
- Schema validation (structural correctness)
- Reference integrity checks (definition and execution references exist)
- Replay procedure execution

📊 Validation Metrics
| Metric | Description | Benchmark |
|---|---|---|
| Schema Pass Rate | Evidence conforms to schema | 100% |
| Reference Integrity | Broken references | 0 |
| Replay Readiness | Replay fails due to missing fields | 0 |

🧬 Example Applications
| Domain | Evidence Model Represents | Concrete Implementation |
|---|---|---|
| Audits | replayable proof object | JSON evidence artifact |
| Tooling | interoperability contract | published schema |
| Governance | trustless verification | replay descriptor fields |

✨ Key Insight:
Evidence is the executable “receipt” of governance.

---

## Letter G — Governance & Guardrails

Governance Boundary

📘 ERIL Definition:
Governance Boundary ≡ Pre‑Execution Enforcement Frontier ≡ Non‑Bypassable Control Point

(See Admissibility, Fail‑Closed)

🔑 Governance Boundary Has 3 Critical Aspects
| Dimension | Description |
|---|---|
| Pre‑Execution | Enforced before side effects occur |
| Non‑Bypassable | No execution path can skip this boundary |
| Uniform | Applies uniformly across execution paths |

🧪 Measurement & Validation Tools
- Boundary interception tests
- Side‑effect absence checks prior to permit
- Refusal pathway tests

📊 Validation Metrics
| Metric | Description | Benchmark |
|---|---|---|
| Bypass Observed | Execution proceeds without boundary | 0 |
| Pre‑Side‑Effect | Side effect before permit | 0 |
| Uniform Enforcement | inconsistent boundary behavior | 0 |

🧬 Example Applications
| Domain | Boundary Represents | Concrete Implementation |
|---|---|---|
| Systems | release boundary | atomic commit gate |
| AI | output release gate | admit/refuse before publish |
| Security | authorization frontier | enforce before access |

✨ Key Insight:
A boundary you can bypass is not a boundary.

---

Governance Scope

📘 ERIL Definition:
Governance Scope ≡ Declared Coverage Region ≡ What ERIL Governs (and Does Not)

(See Scope Declaration)

🔑 Governance Scope Has 3 Critical Aspects
| Dimension | Description |
|---|---|
| Explicit | In‑scope and out‑of‑scope are declared, not implied |
| Bounded | Prevents accidental overreach and liability creep |
| Stable | Scope changes are versioned, not informal |

🧪 Measurement & Validation Tools
- Scope conformance checks against declared scope
- Out‑of‑scope detection tests (should refuse or ignore)
- Version reference checks in evidence artifacts

📊 Validation Metrics
| Metric | Description | Benchmark |
|---|---|---|
| Scope Clarity | ambiguous scope | 0 |
| Overreach Events | governed system acts outside scope | 0 |
| Version Binding | evidence missing scope version reference | 0 |

🧬 Example Applications
| Domain | Scope Represents | Concrete Implementation |
|---|---|---|
| Healthcare | “This is not diagnosis” | refuse beyond extraction task |
| Finance | “Only these inputs allowed” | admissibility input whitelist |
| Security | “Only these actions governed” | governed action list |

✨ Key Insight:
Scope is how governance avoids becoming a liability generator.

---

## Letter R — Refusal, Replay & Rigor

Refusal Condition

📘 ERIL Definition:
Refusal Condition ≡ Declarative Non‑Permission Trigger ≡ Deterministic Stop Rule

(See Fail‑Closed, Refusal Semantics)

🔑 Refusal Condition Has 3 Critical Aspects
| Dimension | Description |
|---|---|
| Declarative | Expressed in the ERIL Definition |
| Deterministic | Same inputs → same refusal result |
| Side‑Effect Free | Refusal occurs before external release |

🧪 Measurement & Validation Tools
- Deterministic refusal tests
- Side‑effect absence checks
- Refusal artifact schema checks (if refusal artifact is produced)

📊 Validation Metrics
| Metric | Description | Benchmark |
|---|---|---|
| Determinism | same inputs → same refusal | 100% |
| External Change | outward change on refusal | 0 |
| Reason Coverage | refusal without reason code | 0 |

🧬 Example Applications
| Domain | Refusal Condition Represents | Concrete Implementation |
|---|---|---|
| Governance | “Not permitted” | explicit refuse |
| Security | “Unauthorized” | deny‑by‑default |
| Safety | “Uncertain” | refuse under uncertainty |

✨ Key Insight:
Refusal is not failure. Refusal is governance succeeding.

---

Refusal Semantics (ERIL)

📘 ERIL Definition:
Refusal Semantics ≡ Meaning of Refusal Outcomes ≡ Governed Non‑Release Behavior

(See Refusal Condition, Fail‑Closed)

🔑 Refusal Semantics Has 3 Critical Aspects
| Dimension | Description |
|---|---|
| First‑Class Outcome | refusal is a valid outcome, not an exception |
| Reason‑Coded | refusal is explainable via deterministic reason codes |
| Audit‑Legible | refusal can be recorded for later inspection |

🧪 Measurement & Validation Tools
- Refusal artifact generation tests
- Reason code enumeration checks
- Audit presence checks in evidence stream

📊 Validation Metrics
| Metric | Description | Benchmark |
|---|---|---|
| Explicit Refusal | refusal missing artifact or record | 0 |
| Reason Completeness | refusal without reason code | 0 |
| Audit Presence | refusal not recorded | 0 |

🧬 Example Applications
| Domain | Refusal Semantics Represents | Concrete Implementation |
|---|---|---|
| Procurement | “Not admissible to deploy” | refusal pre‑execution |
| Data | “Not admissible to export” | refusal before egress |
| AI | “Not admissible to release output” | refusal before publish |

✨ Key Insight:
Refusal is the system telling the truth when permission is not provable.

---

Replay Semantics (ERIL)

📘 ERIL Definition:
Replay Semantics ≡ Independent Verification Rule ≡ Same Definition + Same Inputs → Same Outcome

(See Evidence Model)

🔑 Replay Semantics Has 3 Critical Aspects
| Dimension | Description |
|---|---|
| Independent | verifier does not trust executor |
| Deterministic | replay yields same outcome |
| Artifact‑Anchored | replay uses recorded artifacts, not narratives |

🧪 Measurement & Validation Tools
- Replay procedure execution
- Evidence reference integrity checks
- Determinism harness across environments

📊 Validation Metrics
| Metric | Description | Benchmark |
|---|---|---|
| Replay Match | replay outcome differs | 0 |
| Environment Independence | replay depends on executor state | 0 |
| Artifact Sufficiency | replay fails due to missing artifact fields | 0 |

🧬 Example Applications
| Domain | Replay Represents | Concrete Implementation |
|---|---|---|
| Audit | “Verify the decision” | independent replay |
| Security | “Prove no hidden input used” | artifact‑anchored replay |
| Governance | “Verify process compliance” | deterministic replay |

✨ Key Insight:
Replay is how governance becomes verifiable instead of believable.

---

## Letter S — Scope, Specification & Stability

Scope Declaration

📘 ERIL Definition:
Scope Declaration ≡ Explicit Boundary Statement ≡ In‑Scope/Out‑of‑Scope Contract

(See Governance Scope)

🔑 Scope Declaration Has 3 Critical Aspects
| Dimension | Description |
|---|---|
| Explicit | scope is declared, not inferred |
| Prevents Overclaim | limits liability and expectation drift |
| Versioned | scope changes are versioned and referenced |

🧪 Measurement & Validation Tools
- Scope completeness checks (in/out explicitly present)
- Version reference checks in evidence artifacts
- Out‑of‑scope test cases

📊 Validation Metrics
| Metric | Description | Benchmark |
|---|---|---|
| Scope Completeness | missing in‑scope/out‑of‑scope | 0 |
| Overclaim Events | system claims beyond scope | 0 |
| Version Binding | evidence missing scope version | 0 |

🧬 Example Applications
| Domain | Scope Declaration Represents | Concrete Implementation |
|---|---|---|
| Healthcare | “Not a diagnostic system” | out‑of‑scope declaration |
| Finance | “Only these sources used” | in‑scope source list |
| Security | “Only these actions governed” | action scope list |

✨ Key Insight:
A system without scope is a system that cannot be safely trusted.

---

Fail‑Closed (ERIL)

📘 ERIL Definition:
Fail‑Closed ≡ Refuse by Default ≡ No Permission → No Execution

(See Refusal Condition, Governance Boundary)

🔑 Fail‑Closed Has 3 Critical Aspects
| Dimension | Description |
|---|---|
| Default Refusal | absence of proof becomes refusal |
| No Degradation | no partial compliance modes |
| Safety Preserving | prevents silent unsafe progression |

🧪 Measurement & Validation Tools
- Missing input tests (should refuse)
- Missing evidence tests (should refuse or invalidate)
- Determinism tests across repeated runs

📊 Validation Metrics
| Metric | Description | Benchmark |
|---|---|---|
| Default Deny | permit when proof missing | 0 |
| Partial Execution | side effect before permit | 0 |
| Determinism | same inputs → same outcome | 100% |

🧬 Example Applications
| Domain | Fail‑Closed Represents | Concrete Implementation |
|---|---|---|
| Governance | “No proof → no action” | deny‑by‑default |
| AI Safety | “Uncertain → refuse” | refusal outcome |
| Systems | “No artifact → no transition” | evidence gate |

✨ Key Insight:
Fail‑closed is what makes governance real under uncertainty.