<!-- SPDX-License-Identifier: CC-BY-4.0 -->
---
instrument: Barrel Organ
slug: barrel-organ
family: woodwind
class: hand-cranked mechanical organ with pinned barrel and windchest
readiness: L1 concept packet
authority: concept_only / pending_measurement
---

# Barrel Organ Design

## Concept

A barrel organ is a mechanical organ in which a rotating pinned barrel stores the tune. As the player turns a crank, the barrel advances through the tune and a bellows supplies wind. Pins on the barrel lift followers, keys, or trackers. Those motions open pallets in the windchest, allowing wind to reach selected organ pipes.

This L1 packet captures the real mechanism and design questions only. It does not define barrel diameter, pin pitch, gear ratio, wind pressure, pipe scale, pipe lengths, tuning, or cut geometry.

## Mechanical Program

The barrel is the music program. Pins, staples, or raised features on its surface represent note events. A follower row reads the barrel as it turns. Each follower connects to a tracker or lever that opens a corresponding pallet.

The first design decision is whether the barrel should be removable for different tunes or fixed as a single study program. A removable barrel is musically richer but makes alignment, indexing, and wear control more demanding.

Open questions for the barrel mechanism:

- How should the crank motion synchronize bellows pumping and barrel rotation?
- How much lost motion is acceptable before note timing feels sloppy?
- Should the followers read pins directly or through a replaceable tracker strip?
- How will the barrel index to the start of a tune without damaging followers?
- What materials reduce wear and noise at the pin/follower contact?

## Wind System

The wind path is:

```text
hand crank -> bellows -> reservoir or regulator -> windchest -> pallet valves -> pipes
```

The bellows must create enough steadiness that the pipes speak while the crank is turning. A reservoir or regulator can smooth crank pulses and keep the windchest from sagging when multiple pallets open. This L1 packet does not assign wind-pressure or reservoir values.

## Windchest And Pallets

The windchest distributes air to pipe channels. Each pallet is normally closed and opens only when its tracker is lifted by the barrel program. The pallet system must seal quietly, reset reliably, and tolerate repeated mechanical actuation.

The first mule should test pallet sealing, travel, return force, tracker friction, and timing repeatability before any pipe rank is added.

## Pipe Families

The primary voice can be flue pipes, reed pipes, or a mixed study. Flue pipes use a wind sheet across a mouth and lip. Reed pipes use a vibrating reed coupled to a resonator. Flue pipes may be simpler for an initial visual demonstration; reed pipes may be more compact but add voicing and reed regulation complexity.

No pipe length, pitch table, scale, reed dimension, mouth geometry, or tuning plan is specified here. Those belong in a measured or reference-grounded L2 packet.

## Portable Form

The instrument should be a self-contained crank-operated box: crank, barrel, bellows, windchest, pipes, and access panels. The enclosure must make the mechanism inspectable because pinned-barrel organs are maintenance-heavy. Exact case proportions, handle placement, weight, and service clearances are pending mockup.

## Parametric Intent

Future design tables should separate:

- barrel program layout and indexing;
- crank-to-barrel and crank-to-bellows transmission;
- follower, tracker, and pallet geometry;
- windchest channels and sealing surfaces;
- bellows and reservoir behavior;
- pipe family, pipe scale, and measured tuning;
- case access, noise control, and service adjustments.

Every numeric field in those future tables should carry provenance: measured mule, reviewed drawing, supplier specification, CAD parameter, or `estimate_pending_measurement`.

## V5 Boundary

This is an L1 concept packet. It is not a barrel drilling plan, pinned tune layout, pipe-scale chart, wind-pressure design, CAD source, DXF release, or fabrication package.
