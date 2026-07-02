# Design Intent — barrel-organ rev A

- Master: no CAD master exists (see `cad/README.md` no-scad rationale). Best-available intent
  sources: `design.md` (sha256: dd24df2b7bb43d25f37206e2ab8fab49dfe91d74d780bf9f4af0bee7459f9887)
  and `parametric-design-table.md` (sha256: d7bef093ef3273e2a9d0be02d43f5030013fdb146d6c572c9eb309ed198b5d6e),
  plus the source-only `wolfram/barrel-organ-wolfram-model.wl` (sha256: a896902323377d93568fead0f56e5ae558c9faf00131e51d47f3285120ebfb6a).
- Function: A hand-cranked mechanical wind instrument. A crank does three jobs at once:
  advances the barrel program, supplies wind via bellows, and paces the player. A pinned
  barrel (or removable barrel / replaceable pinned strip — undecided) stores note events;
  followers/trackers read the program and open pallets in a windchest; wind from bellows and
  a possible reservoir speaks a flue and/or reed pipe rank. This L2 packet is architecture and
  gates only — no barrel diameter, pin pitch, gear ratio, pallet travel, wind pressure, pipe
  scale, pipe length, tuning, or cut geometry is defined anywhere in the repo.
- Environment: bench-mule prototype first (non-musical mechanism + wind mule), not a finished
  cabinet instrument; case is an inspection frame, not furniture.
- Target qty: 1 (mechanism/wind mule prototype, per design.md L2 Mule Plan). Deadline: TBD.
  Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

Every row below is a symbolic relationship, not a measured value — this packet has no numeric
critical dimensions yet. Nominal is the governing formula from `parametric-design-table.md`;
promotion to a real number requires the mule evidence named in
`measurement-and-validation-protocol.md`.

| Feature | Nominal (symbolic) | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Barrel advance per crank cycle | `barrelAdvancePerCrankCycleEstimate = tuneEventPitchEstimate * eventRowsAdvancedPerCycleEstimate` | pending_measurement | governs tune-event timing/registration | parametric-design-table.md |
| Follower clearance | `followerClearanceEstimate = pinLiftEstimate - usableFollowerLiftEstimate` | pending_measurement | prevents follower chatter/mistracking | parametric-design-table.md |
| Tracker motion reserve | `trackerMotionReserveEstimate = followerLiftEstimate - lostMotionEstimate - palletOpenMotionEstimate` | pending_measurement | ensures pallet fully opens despite linkage losses | parametric-design-table.md |
| Pallet seal reserve | `palletSealReserveEstimate = returnMotionEstimate - seatCompressionEstimate` | pending_measurement | prevents leak or mistiming at pallet seat | parametric-design-table.md |
| Wind demand envelope | `windDemandEnvelopeEstimate = openPalletCountEstimate * pipeDemandPerPalletEstimate` | pending_measurement | sizes bellows/reservoir capacity | parametric-design-table.md |
| Reservoir buffer ratio | `reservoirBufferRatioEstimate = reservoirAvailableFlowEstimate / windDemandEnvelopeEstimate` | pending_measurement | wind steadiness under simultaneous pallet load | parametric-design-table.md |
| Pipe interface registration | `pipeInterfaceRegistrationEstimate = pipeToeDatumEstimate - windchestChannelDatumEstimate` | pending_measurement | pipe seating repeatability | parametric-design-table.md |

## Incidental (free for DFM)

- Case cosmetic finish, enclosure styling, and non-mating surface treatment.
- Handle grip cosmetics (as distinct from crank throw/bearing geometry, which is mechanism-critical and still open).

## Must-nots (DFM may never violate)

- Do not add a tuned pipe rank until pallet and wind behavior are documented (`assembly-sequence.md` Assembly Holds).
- Do not pin a real tune until barrel indexing and follower wear are documented (`assembly-sequence.md`).
- Do not enclose the mechanism until service access is demonstrated (`assembly-sequence.md`; `risk-FMEA.md` Case row).
- Do not export CAD/DXF until symbolic parameters in `parametric-design-table.md` have measured or reviewed sources (`assembly-sequence.md`; `tolerance-and-fit-analysis.md` Non-Claims).
- Do not infer any interface dimension from concept art, rendered previews, or unreviewed prose (`subsystem-interface-spec.md` Interface Review Rules).

## Material intent

- Unresolved. `bom.csv` carries every part family at `pending_design`/`pending_selection` source
  status; no wood species, metal alloy, leather/cloth spec, or gasket material has been chosen.
- `sourcing.csv` (this pass) lists candidate categories only (dowel/tube stock for the barrel,
  brass pin stock, hardwood/plywood windchest stock, bellows leather or cloth-over-board) as
  `TBD` search starting points, not commitments.
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions
logged, nothing presented as shippable. No CAD master exists to compile against yet (see
`cad/README.md`).
