<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Barrel Organ

Status: L1 concept packet

This repository is a V5 L1 concept packet for a hand-cranked barrel organ. A pinned barrel encodes the music, the crank drives both the barrel and bellows, pins lift key levers or trackers, the trackers open pallets in a windchest, and air from the bellows speaks flue or reed organ pipes.

This packet is not build-ready. It contains no fabricated dimensions, pin spacing, barrel scale, pipe lengths, tuning values, wind-pressure values, CAD geometry, DXF coordinates, or measured validation data. All timing, pipe scaling, pallet travel, bellows capacity, windchest layout, and crank gearing remain pending measurement and prototype review.

## Packet Map

- `design.md` - mechanism, pinned-barrel logic, wind path, pipe/rank concepts, and prototype questions.
- `bom.csv` - estimated parts families only.
- `visual-output-register.csv` - V5 authority register; every artifact is concept-only or pending measurement.
- `cad/mcp-session-log.md` - provenance stub; no MCP or CAD session was run.
- `decision-record.md` - qmd Step 0 result, key decisions, open questions, and promotion gates.

## Readiness Boundary

The next useful step is a non-musical mechanism mule: crank, barrel indexing, tracker motion, pallet sealing, and bellows steadiness. Pipe scaling, pinned music rolls, wind pressure, and tonal voicing should only enter a later packet from measured prototypes or reviewed references.
