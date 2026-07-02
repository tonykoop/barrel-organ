<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Barrel Organ Drawing Brief

This L2 packet has no measured or reviewed dimensions, so no dimensioned
fabrication drawing exists yet. The required first drawings are witness/mule
sketches — topology and datum relationships only, per `assembly-sequence.md`
and `subsystem-interface-spec.md` — not dimensioned fabrication geometry.

Required first drawings (concept/topology only, no dimensions):

- Barrel axis setup jig sketch — datum relationship between barrel journal and
  frame; no radial/axial play values until the barrel indexing mule reports
  evidence.
- Follower row alignment jig sketch — follower spacing shown as topology
  (one-per-channel), not a pitch dimension.
- Tracker travel witness jig sketch — shows motion path from follower to
  pallet without assigning travel, lost-motion, or clearance values.
- Pallet leak witness jig sketch — seat/gasket contact relationship, no seat
  dimension or sealing-force value.
- Windchest channel layout schematic — channel count and pallet-to-channel
  mapping as topology only; no channel dimensions until the wind mule reports
  evidence.
- Pipe toe seating gauge sketch — removable-fit relationship only; explicitly
  excludes pipe scale, mouth geometry, or tuning.
- Case service access mockup sketch — access-panel locations relative to
  barrel/follower/pallet/bellows zones; no case dimensions.

## Authority Notes

- Every drawing above documents a **relationship**, not a dimension. Per
  `tolerance-and-fit-analysis.md`, no tolerance, dimension, angle, pressure,
  pitch, or spacing value may appear until the corresponding mule test in
  `measurement-and-validation-protocol.md` produces measured or reviewed
  evidence.
- No barrel drilling plan, pinned tune layout, pipe-scale chart, or
  wind-pressure design may be derived from these sketches.
- Per `assembly-sequence.md`: do not export CAD/DXF until symbolic parameters
  in `parametric-design-table.md` have measured or reviewed sources.
- See `cad/README.md` for why no `cad/barrel-organ.scad` parametric master
  exists yet — the same "no numeric schedule" gap applies to both CAD and
  drawings.
