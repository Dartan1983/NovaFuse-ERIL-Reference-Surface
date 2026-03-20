# NovaFuse ERIL — Public Reference Surface (IP‑Bound)

<p align="left">
  <img src="https://img.shields.io/badge/Status-Production--Ready-16A34A?style=flat&labelColor=111111" />
  <img src="https://img.shields.io/badge/Governance-Fail--Closed%20by%20Design-DC2626?style=flat&labelColor=111111" />
  <img src="https://img.shields.io/badge/Evidence-Replay--Verifiable-2563EB?style=flat&labelColor=111111" />
  <img src="https://img.shields.io/badge/IP-Public%20Reference%20Surface-7C3AED?style=flat&labelColor=111111" />
</p>



**ERIL (Executable Reference Implementation Language)** defines how governance decisions are expressed as executable procedures that produce replayable evidence.  
This repository provides a **public reference surface**: minimal artifacts sufficient to validate **fail‑closed execution**, **deterministic refusal**, and **cryptographic evidence production** — without publishing NovaFuse's full normative specification or proprietary governance methodology.

> **All claims in this repository are backed by executable artifacts and replayable evidence.**

---

## Minimal Execution Flow (Proof)

```eril
INPUT: access_request(user, resource)

IF attested_role(user) == "authorized"
AND risk_score(resource) < threshold
THEN PERMIT
ELSE REFUSE

EVIDENCE: required
```

Execution (ERI):

* Evaluate inputs
* Enforce admissibility
* Produce signed evidence bundle

Replay:

* Re-run evaluation from evidence
* Verify identical outcome
```

---

## What this repo is (and is not)

### ✅ This repo *is*
- A **public proof surface** for executable governance:
  - A minimal ERIL definition example
  - A minimal ERI execution example
  - A minimal evidence / refusal artifact schema
  - A deterministic verification / replay demonstration

### This repo is *not*
- The complete ERIL normative specification (full SHALL/SHOULD/MAY corpus)
- A certification authority or regulatory approval mechanism
- A disclosure of proprietary methods, thresholds, scoring, or trade secrets
- A claim of outcome correctness (ERIL evidences **process**, not correctness)

(See **./IP-BOUNDARY.md**)

---

## What ERIL Does

ERIL makes governance executable, verifiable, and replayable.

It replaces:

- Prose policies → executable definitions  
- Informal enforcement → deterministic admissibility  
- Post-hoc evidence → mandatory evidence generation  
- Trust-based verification → independent replay  

ERIL is governance infrastructure.

---

## 5-Minute Evaluation Path

### Quick Start (Immediate Proof)

1. **Review execution flow** (above) - 30 seconds
2. **Run minimal example** - 2 minutes
   ```bash
   cd examples/eri-minimal
   # Review ERIL.md, EXECUTION.json, EVIDENCE.json
   ```
3. **Verify structure** - 1 minute
   ```bash
   cd verifier
   ./verify.sh
   ```
4. **Test replay capability** - 2 minutes
   ```bash
   cd tools/replay-demo
   ./replay.sh
   ```

**Result:** Complete ERIL → ERI → Evidence → Replay verification in under 5 minutes.

---

## Quick start (public demo)

> Scope notice: running these examples demonstrates **verification surface** only; it does not constitute regulatory approval or certification authority.

### Option A — Minimal replay demo

1. Review ERIL definition: `examples/eri-minimal/ERIL.md` 
2. Review recorded execution: `examples/eri-minimal/EXECUTION.json` 
3. Validate artifact structure:
   - `schemas/evidence.schema.json` 
4. Follow replay procedure:
   - `examples/eri-minimal/REPLAY.md` 

### Option B — Refusal path demo

1. Review refusal ERIL: `examples/eri-refusal/ERIL.md` 
2. Review refusal artifact: `examples/eri-refusal/REFUSAL.json` 
3. Confirm refusal semantics:
   - `docs/public/REFUSAL-SEMANTICS.md` 

---

## Repository layout

- `docs/public/` — high-level public documentation (descriptive, not fully normative)
- `examples/` — minimal ERI examples (success + refusal)
- `schemas/` — public JSON schemas for evidence/refusal artifacts
- `verifier/` — deterministic verification/replay demo scripts
- `IP-BOUNDARY.md` — what is intentionally omitted and how licensing works
- `NORMATIVE-CORE-INDEX.md` — public index of what is claimed here vs what is licensed

---

## Reference Surface

- `examples/` — minimal ERI examples (success + refusal)
- `schemas/` — public JSON schemas for evidence/refusal artifacts
- `verifier/` — deterministic verification/replay demo scripts
- `docs/public/` — high-level public documentation (descriptive, not fully normative)
- `IP-BOUNDARY.md` — what is intentionally omitted and how licensing works
- `NORMATIVE-CORE-INDEX.md` — public index of what is claimed here vs what is licensed

---

## Safety / scope posture

ERIL and ERI patterns are compatible with safety-critical domains **only when bounded**.  
Example ERIs should be intentionally constrained to a single micro-task with explicit refusals and no clinical or operational overreach — as demonstrated by governed ERI patterns where system refuses output when safety conditions are not met and avoids diagnosis/recommendations.

---

## Licensing & IP

This repository is published as a **public reference surface**.  
NovaFuse retains rights to proprietary methods, trade secrets, and patent-pending techniques; this repo does not grant rights beyond what is explicitly stated in license and **IP-BOUNDARY.md**.

---

## Contact

- Email: novafuse.technologies@gmail.com

---

## Attribution

If you cite this repository in an audit, assessment, or standards process, cite:
- Repository tag/release
- Commit hash
- `NORMATIVE-CORE-INDEX.md` 
- Applicable example ERI artifact(s)
