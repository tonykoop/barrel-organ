<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Measurement And Validation Protocol

This protocol defines what must be measured before any barrel-organ estimate can
be promoted to fabrication authority. It supplies no measured dimensions,
tuning values, wind-pressure values, pipe lengths, pin spacing, or CAD/DXF
coordinates.

## Evidence Classes

| Evidence class | Acceptable source | Authority result |
| --- | --- | --- |
| `estimate_pending_measurement` | Concept note, symbolic relationship, or mule plan | Planning only |
| `measured_mule` | Repeatable bench test with labeled setup and raw notes | Candidate measured authority |
| `reviewed_reference` | Cited reference or supplier spec reviewed against this packet | Candidate design authority |
| `reviewed_cad` | CAD derived from measured or reviewed parameters | Possible fabrication authority after review |

## Promotion Matrix

| Parameter family | Current authority | Must be measured or tested | Promotion condition |
| --- | --- | --- | --- |
| Barrel indexing | pending_measurement | Start reference, tune reset, barrel runout, follower registration, repeatability after removal | Same tune events return to the same follower positions without binding or skipped events |
| Pin retention | pending_measurement | Pin insertion method, pullout behavior, wear, follower noise, service replacement | Pins stay secure and serviceable through repeated mule cycles |
| Follower travel | pending_measurement | Lift path, return behavior, lost motion, friction, side load | Pallet input receives repeatable motion without follower chatter |
| Tracker linkage | pending_measurement | Motion transfer, backlash, reset, access for adjustment | Linkage resets reliably and can be adjusted without disassembly |
| Pallet sealing | pending_measurement | Seat contact, gasket behavior, leak detection, return force, repeated actuation | Closed pallets seal and open pallets return without audible or measured leak evidence |
| Bellows output | pending_measurement | Crank cadence, reservoir behavior, wind sag under one or more open pallets | Wind delivery remains stable enough for later pipe speech tests |
| Windchest layout | pending_measurement | Channel isolation, pallet-to-channel mapping, service access, leak paths | Channels stay isolated and accessible during mule tests |
| Pipe interface | pending_measurement | Pipe toe seating, removable fit, channel registration, family-specific coupling | Pipe samples seat consistently without promoting scale or tuning claims |
| Case service | pending_measurement | Barrel removal, follower access, pallet access, bellows inspection, pipe protection | Maintenance tasks can be performed without disturbing unrelated subsystems |

## Validation Order

1. Build a non-musical barrel/action mule with labeled but untuned events.
2. Measure follower and tracker behavior without wind.
3. Add pallet and windchest leak checks without pipes.
4. Add bellows and reservoir tests against controlled pallet loads.
5. Add pipe-interface samples only after action and wind behavior are stable.
6. Promote dimensions only when raw test notes, source files, and review status
   are recorded beside the parameter being promoted.

## Required Records

- Test setup ID and date.
- Source artifact or mule ID.
- Parameter symbol being tested.
- Measurement method.
- Raw observation notes.
- Pass/fail rationale.
- Authority upgrade decision.
- Remaining unknowns.
