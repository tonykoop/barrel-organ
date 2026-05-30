<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Risk FMEA

Qualitative failure-mode review for the L3-candidate packet. No numerical
scores are assigned because test evidence does not yet exist.

| Subsystem | Failure mode | Effect | Cause hypothesis | Current control | Next evidence |
| --- | --- | --- | --- | --- | --- |
| Barrel program | Program events drift out of registration | Notes open late, early, or not at all | Barrel play, pin wear, follower geometry, reset error | Concept-only indexing plan | Barrel indexing mule |
| Pins or markers | Pin pulls out or snags follower | Missed event, jam, or wear | Retention method or pin shape not validated | Pending material choice | Pin retention and wear test |
| Followers | Follower chatters or sticks | Noisy action and unreliable pallet motion | Friction, side load, or poor return | Open follower design | Follower travel mule |
| Trackers | Lost motion accumulates | Pallets under-open or mistime | Linkage slack or flex | Symbolic tracker reserve | Tracker witness test |
| Pallets | Pallet leaks or fails to return | Pipes speak unintentionally or wind collapses | Seat material, return force, dirt, misalignment | Pending pallet mule | Leak and return test |
| Bellows | Wind pulses excessively | Pipe speech unstable | Crank cadence and bellows geometry not validated | Reservoir option kept open | Wind sag mule |
| Windchest | Channels cross-leak | Wrong pipes speak or response is weak | Channel isolation not proven | Pending windchest layout | Channel leak test |
| Pipe interface | Pipe sample seats inconsistently | Pipe response cannot be compared | Toe fit or datum unstable | Pending pipe interface samples | Pipe seating test |
| Case | Service access is blocked | Adjustment requires disassembly | Case envelope chosen too early | Access panels required in concept | Service mockup |
| User operation | Crank effort or rhythm is unstable | Timing and wind vary together | Crank, barrel, and bellows coupled poorly | Interface review rule | Crank/wind coupled mule |

## FMEA Update Rule

After each mule test, update the relevant row with observed behavior, evidence
location, and whether the current control remains `pending_measurement` or can
be promoted for review.
