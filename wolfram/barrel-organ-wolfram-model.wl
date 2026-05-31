(* Barrel Organ parametric/symbolic acoustic and mechanism model.
   All numeric physical inputs are estimates pending measurement, not fabrication authority. *)

ClearAll["Global`*"];

barrelOrganMetadata = <|
  "instrument" -> "Barrel Organ",
  "packet" -> "barrel-organ",
  "modelName" -> "Parametric pinned-barrel, pallet, windchest, and pipe-rank study",
  "authority" -> "reference_only - estimates pending measurement",
  "wolframVersionTarget" -> "14.3"
|>;

speedOfSoundEstimate = 343.0; (* estimate — pending measurement, not fabrication authority *)
pipeLengthEstimate = 0.25; (* estimate — pending measurement, not fabrication authority *)
pipeRadiusEstimate = 0.006; (* estimate — pending measurement, not fabrication authority *)
endCorrectionRadiusFactorEstimate = 0.6; (* estimate — pending measurement, not fabrication authority *)
windPressureEstimate = 220.0; (* estimate — pending measurement, not fabrication authority *)
airDensityEstimate = 1.2; (* estimate — pending measurement, not fabrication authority *)
palletOpenAreaEstimate = 0.00004; (* estimate — pending measurement, not fabrication authority *)
activeChannelCountEstimate = 2; (* estimate — pending measurement, not fabrication authority *)
reservoirVolumeEstimate = 0.0015; (* estimate — pending measurement, not fabrication authority *)
crankRateRPMEstimate = 45.0; (* estimate — pending measurement, not fabrication authority *)
gearRatioEstimate = 1.0; (* estimate — pending measurement, not fabrication authority *)
barrelRadiusEstimate = 0.04; (* estimate — pending measurement, not fabrication authority *)
pinSpacingArcEstimate = 0.006; (* estimate — pending measurement, not fabrication authority *)
followerLiftEstimate = 0.002; (* estimate — pending measurement, not fabrication authority *)
followerClearanceEstimate = 0.0005; (* estimate — pending measurement, not fabrication authority *)
secondsPerMinuteEstimate = 60.0; (* estimate — pending measurement, not fabrication authority *)

pipeLengthMinimumEstimate = 0.08; (* estimate — pending measurement, not fabrication authority *)
pipeLengthMaximumEstimate = 0.80; (* estimate — pending measurement, not fabrication authority *)
pipeRadiusMinimumEstimate = 0.002; (* estimate — pending measurement, not fabrication authority *)
pipeRadiusMaximumEstimate = 0.025; (* estimate — pending measurement, not fabrication authority *)
endCorrectionRadiusFactorMinimumEstimate = 0.0; (* estimate — pending measurement, not fabrication authority *)
endCorrectionRadiusFactorMaximumEstimate = 1.2; (* estimate — pending measurement, not fabrication authority *)
speedOfSoundMinimumEstimate = 320.0; (* estimate — pending measurement, not fabrication authority *)
speedOfSoundMaximumEstimate = 360.0; (* estimate — pending measurement, not fabrication authority *)
windPressureMinimumEstimate = 50.0; (* estimate — pending measurement, not fabrication authority *)
windPressureMaximumEstimate = 1000.0; (* estimate — pending measurement, not fabrication authority *)
airDensityMinimumEstimate = 0.9; (* estimate — pending measurement, not fabrication authority *)
airDensityMaximumEstimate = 1.4; (* estimate — pending measurement, not fabrication authority *)
palletOpenAreaMinimumEstimate = 0.00001; (* estimate — pending measurement, not fabrication authority *)
palletOpenAreaMaximumEstimate = 0.0003; (* estimate — pending measurement, not fabrication authority *)
activeChannelCountMinimumEstimate = 1; (* estimate — pending measurement, not fabrication authority *)
activeChannelCountMaximumEstimate = 8; (* estimate — pending measurement, not fabrication authority *)
activeChannelCountStepEstimate = 1; (* estimate — pending measurement, not fabrication authority *)
reservoirVolumeMinimumEstimate = 0.0005; (* estimate — pending measurement, not fabrication authority *)
reservoirVolumeMaximumEstimate = 0.02; (* estimate — pending measurement, not fabrication authority *)
crankRateMinimumEstimate = 10.0; (* estimate — pending measurement, not fabrication authority *)
crankRateMaximumEstimate = 120.0; (* estimate — pending measurement, not fabrication authority *)
gearRatioMinimumEstimate = 0.25; (* estimate — pending measurement, not fabrication authority *)
gearRatioMaximumEstimate = 4.0; (* estimate — pending measurement, not fabrication authority *)
barrelRadiusMinimumEstimate = 0.015; (* estimate — pending measurement, not fabrication authority *)
barrelRadiusMaximumEstimate = 0.12; (* estimate — pending measurement, not fabrication authority *)
pinSpacingArcMinimumEstimate = 0.001; (* estimate — pending measurement, not fabrication authority *)
pinSpacingArcMaximumEstimate = 0.02; (* estimate — pending measurement, not fabrication authority *)
followerLiftMinimumEstimate = 0.0005; (* estimate — pending measurement, not fabrication authority *)
followerLiftMaximumEstimate = 0.008; (* estimate — pending measurement, not fabrication authority *)
followerClearanceMinimumEstimate = 0.0; (* estimate — pending measurement, not fabrication authority *)
followerClearanceMaximumEstimate = 0.003; (* estimate — pending measurement, not fabrication authority *)
pipeLengthRangeEstimate = {pipeLengthMinimumEstimate, pipeLengthMaximumEstimate}; (* estimate — pending measurement, not fabrication authority *)

openPipeEffectiveLength[length_, radius_, endCorrectionRadiusFactor_] :=
  length + 2 endCorrectionRadiusFactor radius;

stoppedPipeEffectiveLength[length_, radius_, endCorrectionRadiusFactor_] :=
  length + endCorrectionRadiusFactor radius;

openPipeFrequency[speed_, length_, radius_, endCorrectionRadiusFactor_] :=
  speed/(2 openPipeEffectiveLength[length, radius, endCorrectionRadiusFactor]);

stoppedPipeFrequency[speed_, length_, radius_, endCorrectionRadiusFactor_] :=
  speed/(4 stoppedPipeEffectiveLength[length, radius, endCorrectionRadiusFactor]);

orificeVelocity[pressure_, density_] := Sqrt[2 pressure/density];

windchestFlowEstimate[channelCount_, openArea_, pressure_, density_] :=
  channelCount openArea orificeVelocity[pressure, density];

reservoirTimeConstantEstimate[volume_, channelCount_, openArea_, pressure_, density_] :=
  volume/windchestFlowEstimate[channelCount, openArea, pressure, density];

barrelRPM[crankRateRPM_, gearRatio_] := crankRateRPM gearRatio;

barrelSurfaceSpeed[crankRateRPM_, gearRatio_, barrelRadius_] :=
  2 Pi barrelRadius barrelRPM[crankRateRPM, gearRatio]/secondsPerMinuteEstimate;

pinEventRate[crankRateRPM_, gearRatio_, barrelRadius_, pinSpacingArc_] :=
  barrelSurfaceSpeed[crankRateRPM, gearRatio, barrelRadius]/pinSpacingArc;

palletMotionMargin[followerLift_, followerClearance_] := followerLift - followerClearance;

barrelOrganStudy[length_, radius_, endCorrectionRadiusFactor_, speed_, pressure_,
    density_, openArea_, channelCount_, reservoirVolume_, crankRateRPM_,
    gearRatio_, barrelRadius_, pinSpacingArc_, followerLift_, followerClearance_] :=
  <|
    "metadata" -> barrelOrganMetadata,
    "openPipeFrequencyHz" ->
      openPipeFrequency[speed, length, radius, endCorrectionRadiusFactor],
    "stoppedPipeFrequencyHz" ->
      stoppedPipeFrequency[speed, length, radius, endCorrectionRadiusFactor],
    "estimatedWindchestFlowM3PerS" ->
      windchestFlowEstimate[channelCount, openArea, pressure, density],
    "estimatedReservoirTimeS" ->
      reservoirTimeConstantEstimate[reservoirVolume, channelCount, openArea, pressure, density],
    "estimatedPinEventRatePerS" ->
      pinEventRate[crankRateRPM, gearRatio, barrelRadius, pinSpacingArc],
    "estimatedPalletMotionMarginM" ->
      palletMotionMargin[followerLift, followerClearance],
    "authorityNote" ->
      "All numeric values are placeholders pending measurement; use relationships only."
  |>;

barrelOrganDefaultStudy =
  barrelOrganStudy[
    pipeLengthEstimate,
    pipeRadiusEstimate,
    endCorrectionRadiusFactorEstimate,
    speedOfSoundEstimate,
    windPressureEstimate,
    airDensityEstimate,
    palletOpenAreaEstimate,
    activeChannelCountEstimate,
    reservoirVolumeEstimate,
    crankRateRPMEstimate,
    gearRatioEstimate,
    barrelRadiusEstimate,
    pinSpacingArcEstimate,
    followerLiftEstimate,
    followerClearanceEstimate
  ];

barrelOrganManipulate =
  Manipulate[
    Column[{
      Style["Barrel organ pinned-program and pipe-rank relationship study", 14, Bold],
      "Reference only: every numeric input is an estimate pending measurement.",
      Dataset[{
        <|"branch" -> "open-open flue pipe",
          "frequencyHz" -> openPipeFrequency[
            speedOfSound,
            pipeLength,
            pipeRadius,
            endCorrectionRadiusFactor
          ]|>,
        <|"branch" -> "stopped flue pipe",
          "frequencyHz" -> stoppedPipeFrequency[
            speedOfSound,
            pipeLength,
            pipeRadius,
            endCorrectionRadiusFactor
          ]|>
      }],
      Plot[
        {
          openPipeFrequency[speedOfSound, l, pipeRadius, endCorrectionRadiusFactor],
          stoppedPipeFrequency[speedOfSound, l, pipeRadius, endCorrectionRadiusFactor]
        },
        {l, Min[pipeLengthRange], Max[pipeLengthRange]},
        PlotLegends -> {"open-open relationship", "stopped relationship"},
        AxesLabel -> {"pipe length (m)", "frequency (Hz)"}
      ],
      Row[{
        "Estimated pin event rate: ",
        NumberForm[
          pinEventRate[crankRateRPM, gearRatio, barrelRadius, pinSpacingArc],
          {6, 3}
        ],
        " events/s"
      }],
      Row[{
        "Estimated pallet motion margin: ",
        NumberForm[palletMotionMargin[followerLift, followerClearance], {6, 5}],
        " m"
      }],
      Row[{
        "Estimated windchest flow: ",
        NumberForm[
          windchestFlowEstimate[channelCount, openArea, windPressure, airDensity],
          {6, 5}
        ],
        " m^3/s"
      }],
      Row[{
        "Estimated reservoir time: ",
        NumberForm[
          reservoirTimeConstantEstimate[
            reservoirVolume,
            channelCount,
            openArea,
            windPressure,
            airDensity
          ],
          {6, 3}
        ],
        " s"
      }]
    }],
    {{pipeLength, pipeLengthEstimate, "pipe length estimate (m)"}, pipeLengthMinimumEstimate, pipeLengthMaximumEstimate, Appearance -> "Labeled"},
    {{pipeRadius, pipeRadiusEstimate, "pipe radius estimate (m)"}, pipeRadiusMinimumEstimate, pipeRadiusMaximumEstimate, Appearance -> "Labeled"},
    {{endCorrectionRadiusFactor, endCorrectionRadiusFactorEstimate, "end-correction radius factor estimate"}, endCorrectionRadiusFactorMinimumEstimate, endCorrectionRadiusFactorMaximumEstimate, Appearance -> "Labeled"},
    {{speedOfSound, speedOfSoundEstimate, "speed of sound estimate (m/s)"}, speedOfSoundMinimumEstimate, speedOfSoundMaximumEstimate, Appearance -> "Labeled"},
    {{windPressure, windPressureEstimate, "wind pressure estimate (Pa)"}, windPressureMinimumEstimate, windPressureMaximumEstimate, Appearance -> "Labeled"},
    {{airDensity, airDensityEstimate, "air density estimate (kg/m^3)"}, airDensityMinimumEstimate, airDensityMaximumEstimate, Appearance -> "Labeled"},
    {{openArea, palletOpenAreaEstimate, "open pallet area estimate (m^2)"}, palletOpenAreaMinimumEstimate, palletOpenAreaMaximumEstimate, Appearance -> "Labeled"},
    {{channelCount, activeChannelCountEstimate, "active channel count estimate"}, activeChannelCountMinimumEstimate, activeChannelCountMaximumEstimate, activeChannelCountStepEstimate, Appearance -> "Labeled"},
    {{reservoirVolume, reservoirVolumeEstimate, "reservoir volume estimate (m^3)"}, reservoirVolumeMinimumEstimate, reservoirVolumeMaximumEstimate, Appearance -> "Labeled"},
    {{crankRateRPM, crankRateRPMEstimate, "crank rate estimate (rpm)"}, crankRateMinimumEstimate, crankRateMaximumEstimate, Appearance -> "Labeled"},
    {{gearRatio, gearRatioEstimate, "crank-to-barrel gear ratio estimate"}, gearRatioMinimumEstimate, gearRatioMaximumEstimate, Appearance -> "Labeled"},
    {{barrelRadius, barrelRadiusEstimate, "barrel radius estimate (m)"}, barrelRadiusMinimumEstimate, barrelRadiusMaximumEstimate, Appearance -> "Labeled"},
    {{pinSpacingArc, pinSpacingArcEstimate, "pin spacing along barrel estimate (m)"}, pinSpacingArcMinimumEstimate, pinSpacingArcMaximumEstimate, Appearance -> "Labeled"},
    {{followerLift, followerLiftEstimate, "follower lift estimate (m)"}, followerLiftMinimumEstimate, followerLiftMaximumEstimate, Appearance -> "Labeled"},
    {{followerClearance, followerClearanceEstimate, "follower clearance estimate (m)"}, followerClearanceMinimumEstimate, followerClearanceMaximumEstimate, Appearance -> "Labeled"},
    {{pipeLengthRange, pipeLengthRangeEstimate, "plot length range estimate (m)"}, ControlType -> None},
    SaveDefinitions -> True
  ];

barrelOrganManipulate
