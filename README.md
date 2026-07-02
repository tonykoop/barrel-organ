<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Barrel Organ

**Status:** L2 V5 build-packet candidate (deepened: protocols, tolerances, assembly, FMEA)

This repository is a V5 L2 planning packet for a hand-cranked barrel organ. A
pinned barrel encodes the music, the crank drives the barrel and bellows, pins
lift followers or trackers, those trackers open pallets in a windchest, and
wind speaks flue or reed organ pipes.

## Readiness Boundary

This packet is organized for prototype planning and review, not fabrication. It
contains no fabricated dimensions, pin spacing, barrel scale, pipe lengths,
tuning values, wind-pressure values, CAD geometry, DXF coordinates, or measured
validation data. All timing, pipe scaling, pallet travel, bellows capacity,
windchest layout, case clearances, and crank gearing remain
`pending_measurement`.

The L2 uplift adds a subsystem plan, expanded estimated BOM, and a cut-list
scaffold so a future mechanism/wind mule can be specified without pretending
that the musical geometry is known.

## Packet Map

- `design.md` - subsystem design plan, authority boundaries, and measurement
  gates for the barrel program, action, wind system, windchest, pipe rank, and
  case.
- `bom.csv` - estimated part families and review status.
- `cut-list.csv` - planning rows only; all stock sizes and counts are
  `pending_measurement`.
- `visual-output-register.csv` - V5 authority register; every artifact remains
  `concept_only` or `pending_measurement`.
- `cad/mcp-session-log.md` - provenance stub; no MCP or CAD session was run.
- `decision-record.md` - qmd Step 0 result, decisions, open questions, and L2
  promotion gates.
- `sourcing.csv` / `validation.csv` / `risks.md` / `drawing-brief.md` - V5
  baseline files; spec-first sourcing, promotion-matrix measurement gates,
  risk digest, and witness/mule sketch topology (no dimensions).
- `cad/README.md` - honest rationale for why no `cad/barrel-organ.scad`
  parametric master exists yet (design tables are symbolic-only).
- `evolution/` - Stage 0 evolution-pipeline intake (design intent, revision
  register, master manifest); Gate A not yet run.

## L2 Next Work

The next useful step is a non-musical mechanism and wind mule: crank, barrel
indexing, follower motion, pallet sealing, and bellows steadiness. Pipe scaling,
pinned music programs, wind pressure, and tonal voicing should enter only from
measured prototypes or reviewed references.
