<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Parametric Design Table

This table is symbolic only. It expresses relationships and dependency
structure without fabricated absolute dimensions, frequencies, wind pressures,
pipe lengths, pin spacing, or tuning values.

| Symbol | Meaning | Symbolic relationship | Authority |
| --- | --- | --- | --- |
| `barrelAdvancePerCrankCycleEstimate` | Program advance per crank cycle | `barrelAdvancePerCrankCycleEstimate = tuneEventPitchEstimate * eventRowsAdvancedPerCycleEstimate` | pending_measurement |
| `tuneCycleLengthEstimate` | Barrel program length for a tune | `tuneCycleLengthEstimate = eventCountEstimate * tuneEventPitchEstimate` | pending_measurement |
| `followerClearanceEstimate` | Clearance between inactive follower and barrel surface | `followerClearanceEstimate = pinLiftEstimate - usableFollowerLiftEstimate` | pending_measurement |
| `trackerMotionReserveEstimate` | Motion reserve after losses | `trackerMotionReserveEstimate = followerLiftEstimate - lostMotionEstimate - palletOpenMotionEstimate` | pending_measurement |
| `palletSealReserveEstimate` | Closure margin at the pallet seat | `palletSealReserveEstimate = returnMotionEstimate - seatCompressionEstimate` | pending_measurement |
| `windDemandEnvelopeEstimate` | Wind demand during simultaneous events | `windDemandEnvelopeEstimate = openPalletCountEstimate * pipeDemandPerPalletEstimate` | pending_measurement |
| `reservoirBufferRatioEstimate` | Wind smoothing relationship | `reservoirBufferRatioEstimate = reservoirAvailableFlowEstimate / windDemandEnvelopeEstimate` | pending_measurement |
| `serviceAccessRatioEstimate` | Access room around adjustment zones | `serviceAccessRatioEstimate = availableToolPathEstimate / requiredToolPathEstimate` | pending_measurement |
| `caseProtectionMarginEstimate` | Clearance between mechanism and case panels | `caseProtectionMarginEstimate = caseInteriorEnvelopeEstimate - mechanismMotionEnvelopeEstimate` | pending_measurement |
| `pipeInterfaceRegistrationEstimate` | Pipe seating repeatability | `pipeInterfaceRegistrationEstimate = pipeToeDatumEstimate - windchestChannelDatumEstimate` | pending_measurement |

## Symbol Rules

- Symbols ending in `Estimate` are planning variables only.
- A symbol may move toward fabrication authority only through the measurement
  protocol and a reviewed source.
- This table may drive future CAD parameter names, but it does not provide
  values for CAD.
