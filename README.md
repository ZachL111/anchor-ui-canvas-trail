# anchor-ui-canvas-trail

`anchor-ui-canvas-trail` is a focused Lua codebase around develop a Lua command-oriented project for canvas scenarios with windowed input fixtures, late-data behavior checks, and no credentials or hosted services. It is meant to be easy to inspect, run, and extend without a hosted service.

## Anchor UI Canvas Trail Walkthrough

I would read the project from the outside in: command, fixture, model, then roadmap. That keeps the frontend apps idea grounded in files that can be checked locally.

## Reason For The Project

I use this kind of project to make a rule visible before adding more machinery around it. The important part here is not the size of the codebase. It is that the input signals, scoring rule, fixture data, and expected output can all be checked in one sitting.

## Data Notes

The extended cases are not random smoke tests. `degraded` keeps pressure on the review path, while `recovery` shows the model when capacity and weight are strong enough to clear the threshold.

## How It Is Put Together

The project is organized around a compact model rather than a large framework. Inputs are scored, classified, and checked against golden fixtures. The constants live in code and are mirrored in metadata so documentation drift is easy to catch. The Lua project keeps the module shape simple and validates behavior through a direct script.

## Capabilities

- Models view models with deterministic scoring and explicit review decisions.
- Uses fixture data to keep interaction state changes visible in code review.
- Includes extended examples for layout checks, including `recovery` and `degraded`.
- Documents fixture data tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Command Examples

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Check The Work

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Where Things Live

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Possible Extensions

- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add one more frontend apps fixture that focuses on a malformed or borderline input.

## Tradeoffs

The fixture set is deliberately small. That keeps the review surface clear, but it also means the model should not be treated as a complete domain simulator.

## Getting It Running

Use a normal shell with Lua available on `PATH`. The verifier is written as a PowerShell script because the portfolio was assembled on Windows.
