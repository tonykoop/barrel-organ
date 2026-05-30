<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Tolerance And Fit Analysis

All fits and clearances in this file are open questions. No tolerance,
dimension, angle, pressure, pitch, or spacing value is specified.

## Critical Fits

| Interface | Why it matters | Open fit question | Evidence needed |
| --- | --- | --- | --- |
| Barrel journal to frame | Controls program registration | How much radial and axial play can exist before follower timing becomes unreliable? | Barrel indexing mule |
| Barrel pin to follower | Controls event reading and wear | What pin head shape and follower nose shape avoid snagging, noise, and missed events? | Wear and noise test |
| Follower to tracker | Transfers motion to pallet | What clearance prevents binding while keeping lost motion acceptable? | Motion-transfer mule |
| Tracker to pallet | Converts mechanical motion into wind event | What travel reserve is needed so pallet opens reliably without overdriving the seat? | Pallet travel test |
| Pallet to windchest seat | Controls leaks and reset | What seat material and contact condition seal quietly while returning cleanly? | Leak and return test |
| Bellows to reservoir | Controls wind smoothing | What interface prevents leakage and pulsing without making service difficult? | Wind mule |
| Reservoir to windchest | Feeds pipe channels | What fit protects channel isolation while allowing assembly and inspection? | Leak-path test |
| Pipe toe to windchest | Controls pipe seating and removal | What removable fit keeps the pipe stable without claiming pipe scale? | Pipe-interface sample |
| Case panel to service zone | Controls maintainability | What access opening lets the barrel, followers, pallets, and bellows be serviced? | Service mockup |

## Fit Questions Before CAD

- Which subsystem owns the primary datum: barrel axis, follower row, pallet row,
  windchest face, or case frame?
- How will barrel removal preserve program alignment?
- How will follower springs or returns avoid changing pin contact geometry?
- How can pallet service happen without changing tracker adjustment?
- How can pipe removal happen without disturbing windchest sealing?
- Which clearances need inspection gauges or setup jigs?

## Non-Claims

This document does not provide tolerances. It names the tolerance questions that
must be answered by measured mules or reviewed references before CAD or DXF
authority exists.
