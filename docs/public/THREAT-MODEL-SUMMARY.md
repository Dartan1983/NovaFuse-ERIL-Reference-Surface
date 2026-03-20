# ERIL Threat Model — Public Summary

## Purpose

This document summarizes **classes of governance threats** ERIL is designed to mitigate, without disclosing sensitive detection thresholds or proprietary mechanisms.

---

## Threat Classes Addressed

### 1. Post‑Hoc Justification
**Threat:** Decisions are explained after execution using mutable logs or narratives.  
**Mitigation:** ERIL requires evidence at execution time; replay replaces explanation.

---

### 2. Context Drift
**Threat:** Inputs or conditions change implicitly across systems.  
**Mitigation:** Inputs are explicitly bound and referenced in artifacts.

---

### 3. Authority Laundering
**Threat:** Composite signals hide disallowed authorities or sources.  
**Mitigation:** Authority disclosure is explicit at evaluation boundaries.

---

### 4. Silent Degradation
**Threat:** Systems proceed in degraded or partial compliance modes.  
**Mitigation:** ERIL is fail‑closed; violations refuse deterministically.

---

## Out of Scope (Public)

This summary does not describe:
- exploit‑level techniques,
- evasion thresholds,
- or internal detection heuristics.

It is intended to support **conceptual review**, not red‑team enablement.
