# ERIL — Minimal Governed Decision (Public Example)

## Purpose

This ERIL definition demonstrates a **single, bounded governed decision** using
Executable Reference Implementation Language (ERIL).

The example is intentionally minimal and exists solely to demonstrate:
- pre‑execution evaluation,
- deterministic outcome,
- and evidence artifact emission.

---

## Scope

- **Decision Type:** Single admissibility decision
- **Domain:** Generic (non‑regulated)
- **Side Effects:** None
- **Outcome Types:** EXECUTE or REFUSE

---

## Governance Intent (Descriptive)

The governed action is admissible **only if**:
- required inputs are present,
- declared authority is valid,
- execution context matches declared scope.

Failure to satisfy any condition results in refusal.

---

## Declared Inputs (Illustrative)

- `request_id` 
- `requester_identity` 
- `action_type` 
- `context_hash` 

---

## Declared Outcome

- **EXECUTE:** Emit evidence artifact
- **REFUSE:** Emit refusal artifact (not shown in this example)

---

## Notes

This ERIL definition:
- does not define institutional policy,
- does not include scoring or weighting logic,
- does not imply compliance or approval.

It is a structural demonstration only.
