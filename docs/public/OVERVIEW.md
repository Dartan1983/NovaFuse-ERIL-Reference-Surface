# NovaFuse ERIL — Public Overview

## Executive Summary

The **Executable Reference Implementation Language (ERIL)** defines how governance requirements are expressed as executable procedures that deterministically permit or refuse actions and emit verifiable evidence artifacts.

This repository provides a **public reference surface** for ERIL. It exposes the minimum material required to demonstrate:
- fail‑closed execution,
- deterministic refusal semantics, and
- replayable evidence artifacts.

It intentionally omits the complete normative specification, governance lifecycle procedures, responsibility frameworks, and certification criteria, which remain protected intellectual property.

---

## The Governance Problem ERIL Addresses

Most governance systems rely on:
- static policy text,
- post‑hoc logs,
- and narrative explanations.

These approaches are inherently **reactive** and difficult to verify independently.

ERIL shifts governance **upstream and into execution**:
- Decisions are gated **before** side effects occur.
- Violations produce deterministic refusals.
- Valid transitions require cryptographic evidence.

---

## What ERIL Proves (and What It Does Not)

**ERIL proves:**
- That a declared process was followed.
- That required conditions were evaluated.
- That refusal or execution occurred deterministically.
- That evidence can be replayed by an independent verifier.

**ERIL does not claim:**
- Outcome correctness.
- Ethical sufficiency.
- Regulatory compliance by itself.
- Domain‑specific safety guarantees.

ERIL is about **process evidence**, not outcome judgment.

---

## Intended Audience

This public reference surface is intended for:
- auditors and assessors evaluating governance mechanics,
- standards bodies reviewing execution‑evidence patterns,
- security and compliance leaders assessing feasibility,
- technical reviewers validating determinism and replay.

---

## Repository Scope

This repository demonstrates:
- a minimal ERIL definition,
- bounded ERI execution examples,
- refusal artifacts,
- evidence schemas,
- and replay verification.

For full institutional governance materials, see **IP‑BOUNDARY.md**.
