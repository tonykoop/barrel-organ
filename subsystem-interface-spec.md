<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Subsystem Interface Spec

This spec records subsystem handoffs for review. It contains no fabrication
dimensions, tuning values, wind-pressure values, pipe lengths, or CAD geometry.

## Interface Table

| Upstream subsystem | Downstream subsystem | Handoff | Open authority |
| --- | --- | --- | --- |
| Crank | Barrel program | Rotation and tune reset | Gear relationship and indexing remain pending_measurement |
| Crank | Bellows | Pumping input | Cadence and stroke relationship remain pending_measurement |
| Barrel program | Followers | Pin or marker contact | Pin shape, retention, and wear behavior remain pending_measurement |
| Followers | Trackers/levers | Lift and reset motion | Travel, friction, and lost motion remain pending_measurement |
| Trackers/levers | Pallets | Opening and closing input | Pallet travel and return behavior remain pending_measurement |
| Pallets | Windchest channels | Wind admission | Seal and channel isolation remain pending_measurement |
| Bellows/reservoir | Windchest | Wind supply | Stability and sag behavior remain pending_measurement |
| Windchest | Pipe samples | Air delivery at pipe toe | Pipe interface and voice family remain pending_measurement |
| Case | All service zones | Access and protection | Panel boundaries and tool access remain pending_measurement |

## Interface Review Rules

- Every interface must name its controlling parameter symbol before CAD.
- Every controlling symbol must point to a measurement, reviewed reference, or
  explicit `estimate_pending_measurement` status.
- No interface may infer dimensions from concept art, rendered previews, or
  unreviewed prose.
- A subsystem may be physically mocked up while still having no fabrication
  authority.

## Open Interface Questions

- Does the crank need a phase relationship between barrel motion and bellows
  pumping, or can a reservoir decouple them?
- Should barrel indexing be keyed to the case, the follower rail, or a removable
  program cartridge?
- Can the windchest be removed without detaching the tracker system?
- Can pipe samples be swapped without changing pallet or channel sealing?
- Which interfaces need witness marks, setup stops, or access panels?
