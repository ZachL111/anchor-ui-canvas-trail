# Anchor UI Canvas Trail Walkthrough

This note is the quickest way to read the extra review model in `anchor-ui-canvas-trail`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | view drift | 183 | ship |
| stress | state pressure | 153 | ship |
| edge | layout risk | 174 | ship |
| recovery | interaction cost | 177 | ship |
| stale | view drift | 172 | ship |

Start with `baseline` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`baseline` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
