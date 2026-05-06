# anchor-ui-canvas-trail

`anchor-ui-canvas-trail` is a Lua project in frontend apps. Its focus is to develop a Lua command-oriented project for canvas scenarios with windowed input fixtures, late-data behavior checks, and no credentials or hosted services.

## Why This Exists

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Anchor UI Canvas Trail Review Notes

For a quick review, compare `view drift` with `state pressure` before reading the middle cases.

## Capabilities

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/anchor-ui-canvas-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `view drift` and `state pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added Lua path is deliberately direct, with fixtures doing most of the explaining.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Roadmap

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
