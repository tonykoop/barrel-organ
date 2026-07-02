<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Barrel Organ Risks

Summary risk list for the L2 planning packet. See `risk-FMEA.md` for the full
qualitative failure-mode table (subsystem, failure mode, effect, cause
hypothesis, current control, next evidence); this file is the short-form
digest referenced by the V5 baseline check.

- Barrel program registration can drift (notes open late, early, or not at
  all) from barrel play, pin wear, follower geometry, or reset error — no
  indexing mule evidence exists yet.
- Pin/marker retention and follower wear are unvalidated; a pin pulling loose
  or a follower snagging causes missed or jammed events.
- Tracker lost motion and pallet leak/return behavior are unmeasured, so
  pallets could under-open, mistime, or fail to seal.
- Bellows/crank cadence and reservoir need are undecided; wind could pulse
  enough to destabilize pipe speech once pipes are added.
- Windchest channel isolation is unproven; cross-leaks could make the wrong
  pipe speak or weaken response.
- Case/service access is only a concept requirement; if the case envelope is
  chosen before mule evidence, adjustment may require disassembly.
- No pipe scale, pin spacing, wind pressure, or tuning value exists anywhere
  in this packet — treat every numeric symbol in
  `parametric-design-table.md` and `wolfram/barrel-organ-wolfram-model.wl` as
  `pending_measurement`, not fabrication authority.
- Live sourcing has not been checked (see `sourcing.csv`), so costs and lead
  times are placeholders.
- Remain at L2 until action, wind, and pipe-interface mules produce measured
  or reviewed evidence per `measurement-and-validation-protocol.md`.

## FMEA Update Rule

After each mule test, update the relevant `risk-FMEA.md` row with observed
behavior, evidence location, and whether the current control remains
`pending_measurement` or can be promoted for review.
