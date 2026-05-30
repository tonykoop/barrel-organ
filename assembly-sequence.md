<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Assembly Sequence

This is a prototype and mule sequence, not fabrication instruction. It contains
no dimensions, pin spacing, pipe scale, wind-pressure values, tuning values, or
toolpaths.

## Mule-First Build Order

1. Establish a labeled base board or test frame with removable datum strips.
2. Assemble a barrel indexing mule with blank event markers and follower access.
3. Add follower and tracker motion without wind or pipes.
4. Add a pallet and windchest leak mule with visible access to the seat.
5. Couple the tracker to the pallet and test return behavior.
6. Add crank-driven bellows and optional reservoir as a separate wind mule.
7. Couple wind mule to windchest only after leak and return tests are stable.
8. Add pipe-interface samples without promoting pipe scale or tuning.
9. Add case-panel mockups around the working mules to test service access.
10. Freeze no fabrication geometry until the measurement protocol records
    reviewed evidence for the controlling parameters.

## Jig Families

| Jig family | Purpose | Authority |
| --- | --- | --- |
| Barrel axis setup jig | Hold and repeat the barrel datum during indexing tests | pending_measurement |
| Follower row alignment jig | Keep follower noses visually comparable during wear tests | pending_measurement |
| Tracker travel witness jig | Show motion transfer and lost motion without assigning travel values | pending_measurement |
| Pallet leak witness jig | Make seal and return behavior visible during repeated actuation | pending_measurement |
| Wind path smoke or flow witness | Locate leaks and sag behavior without assigning pressure authority | pending_measurement |
| Pipe toe seating gauge | Compare removable pipe interface behavior without pipe-scale claims | pending_measurement |
| Service access mockup | Test whether hands/tools can reach adjustment points | pending_measurement |

## Assembly Holds

- Do not add a tuned pipe rank until pallet and wind behavior are documented.
- Do not pin a real tune until barrel indexing and follower wear are documented.
- Do not enclose the mechanism until service access is demonstrated.
- Do not export CAD/DXF until symbolic parameters have measured or reviewed
  sources.
