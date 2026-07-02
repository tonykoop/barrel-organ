<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# CAD Notes — No OpenSCAD Master Yet (Honest No-Scad Rationale)

This repo does not have a `cad/barrel-organ.scad` (or similarly named)
parametric envelope master, and this pass deliberately did not author one.

## Why no CAD master exists

A barrel organ is a complex mechanism (pinned barrel + crank/drive train +
followers/trackers/pallets + bellows/reservoir + windchest + pipe rank +
case). Authoring even a bare parametric *envelope* (barrel diameter/length,
follower/pallet count and pitch, windchest channel count, bellows footprint)
requires a real numeric schedule to source formulas from — the same standard
this program's `erhu`/`guzheng`/`pipa`/`ukulele` masters use (fret positions,
string spacing, etc. driven by design-table numbers, not baked constants).

This repo's design tables do not contain that numeric schedule:

- `parametric-design-table.md` is explicitly **symbolic only** — every row is
  a named relationship between `*Estimate` symbols (e.g.
  `barrelAdvancePerCrankCycleEstimate = tuneEventPitchEstimate *
  eventRowsAdvancedPerCycleEstimate`), with `Authority: pending_measurement`
  and no numeric values anywhere in the table.
- `design.md` explicitly states the L2 packet "does not define barrel
  diameter, pin pitch, gear ratio, pallet travel, wind pressure, pipe scale,
  pipe length, tuning, or cut geometry."
- `bom.csv` / `cut-list.csv` carry `estimate_*` quantity placeholders and
  `pending_measurement`/`pending_design` authority — no stock sizes, channel
  counts, or barrel dimensions are fixed.
- `wolfram/barrel-organ-wolfram-model.wl` is a hand-authored *symbolic*
  relationship model; every numeric input (barrel radius, pin spacing,
  follower lift, pipe length, wind pressure, etc.) is explicitly commented
  `estimate — pending measurement, not fabrication authority`. It is useful
  for exploring relationships, not for sourcing an envelope's dimensions.

Concretely missing before a parametric envelope could be authored honestly:
barrel diameter/length, pin/follower pitch and channel count, windchest
channel count and spacing, bellows footprint/fold count, and case envelope
dimensions. All of these are named as open questions in `design.md`,
`subsystem-interface-spec.md`, and `tolerance-and-fit-analysis.md`, gated
behind the mule sequence in `assembly-sequence.md` and the promotion matrix
in `measurement-and-validation-protocol.md`.

## What this means for `visual-output-register.csv`

`BO-CAD-PLAN-001` (`cad/barrel-organ.scad`) remains `pending_measurement`
with `dimension_claim=planned_missing_artifact` — unchanged by this pass,
because the artifact still does not exist and still should not be fabricated
from placeholder numbers.

## When a master can be authored

Once the L2 mule plan in `design.md` produces at least a barrel
diameter/length, a follower/channel count and pitch, and a windchest channel
count (from a measured or reviewed mule — see
`measurement-and-validation-protocol.md`), a parametric envelope master can
be authored the same way `ukulele.scad` sources scale length and fret
positions from `ukulele-design-table.xlsx`. Voicing/reed/pipe-cut-to-pitch
geometry stays out of scope even then — that is hand-tuned geometry, not
envelope geometry.

## Wolfram source

`wolfram/barrel-organ-wolfram-model.wl` and `barrel-organ-starter.wl` already
exist as source-only (`derived_preview`/`reference_only`) symbolic models —
see `cad/mcp-session-log.md` and `visual-output-register.csv` rows
`BO-WL-MODEL-001` / `BO-WL-STARTER-001`. They were not modified this pass.
