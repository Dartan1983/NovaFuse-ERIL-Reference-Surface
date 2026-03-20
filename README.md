# NovaFuse ERIL — Public Reference Surface (IP‑Bound)

**ERIL (Executable Reference Implementation Language)** defines how governance decisions are expressed as executable procedures that produce replayable evidence.  
This repository provides a **public reference surface**: minimal artifacts sufficient to validate **fail‑closed execution**, **deterministic refusal**, and **cryptographic evidence production** — without publishing NovaFuse's full normative specification or proprietary governance methodology.

> **Design principle:** unsafe states are made structurally unreachable through invariant-driven enforcement; violating paths deterministically refuse before side effects, and valid transitions require evidence artifacts. [1](https://www.gsma.com/newsroom/wp-content/uploads//NG.133-v1.0.pdf)

---

## What this repo is (and is not)

### ✅ This repo *is*
- A **public proof surface** for executable governance:
  - A minimal ERIL definition example
  - A minimal ERI execution example
  - A minimal evidence / refusal artifact schema
  - A deterministic verification / replay demonstration

### ❌ This repo is *not*
- The complete ERIL normative specification (full SHALL/SHOULD/MAY corpus)
- A certification authority or regulatory approval mechanism
- A disclosure of proprietary methods, thresholds, scoring, or trade secrets
- A claim of outcome correctness (ERIL evidences **process**, not correctness)

(See **./IP-BOUNDARY.md**)

---

## Why ERIL exists

Traditional governance relies on policy text and mutable logs. ERIL shifts governance to:
- **pre‑execution gating** (preventive controls)
- **deterministic refusal semantics**
- **evidence artifacts** that can be independently verified / replayed

This aligns with the operational governance gap repeatedly described in public governance discourse: governance must be proactive, enforced upfront, and traceable — not reactive "after the fact." [4](https://onedrive.live.com/?id=c4ae8b6b-951f-4406-93e4-bceb8bd31d7d&cid=77bcda69e97706c5&web=1)

---

## Quick start (public demo)

> Scope notice: running these examples demonstrates the **verification surface** only; it does not constitute regulatory approval or certification authority. [2](https://industrial-software.com/wp-content/uploads/AVEVA_SystemPlatform/2023_r2_p01/System_Platform/ReadMe.html)

### Option A — Minimal replay demo
1. Review the ERIL definition: `examples/eri-minimal/ERIL.md` 
2. Review the recorded execution: `examples/eri-minimal/EXECUTION.json` 
3. Validate the artifact structure:
   - `schemas/evidence.schema.json` 
4. Follow the replay procedure:
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

## Safety / scope posture

ERIL and ERI patterns are compatible with safety-critical domains **only when bounded**.  
Example ERIs should be intentionally constrained to a single micro-task with explicit refusals and no clinical or operational overreach — as demonstrated by governed ERI patterns where the system refuses output when safety conditions are not met and avoids diagnosis/recommendations. [3](https://arxiv.org/html/2507.05201v2)

---

## Licensing & IP

This repository is published as a **public reference surface**.  
NovaFuse retains rights to proprietary methods, trade secrets, and patent-pending techniques; this repo does not grant rights beyond what is explicitly stated in the license and **IP-BOUNDARY.md**. [5](https://securityboulevard.com/author/marian-newsome/)

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
