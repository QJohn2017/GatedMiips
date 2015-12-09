function disp(miips)
%DISP displays pulse information

fprintf('Gmiips with:\n\n')
fprintf('modulation amplitude: %.3g rad, ', miips.modulationAmplitude);
fprintf('modulation frequency: %.3g %s\n', ...
  miips.modulationFrequency, miips.inputPulse.timeUnits);
fprintf('GDD range: %.3g %s^2\n', miips.modulationAmplitude * ...
  miips.modulationFrequency^2, miips.inputPulse.timeUnits);

fprintf('scanning phase range: [%.2g, %.2g] rad, ', ...
  min(miips.phaseArray), max(miips.phaseArray))
fprintf('number of phase points: %d\n', numel(miips.phaseArray));
fprintf('modulation function: %s\n', miips.modulationFunction);
if miips.gated
  fprintf('gate function: %s, gate width: %.3g rad\n', ...
    func2str(miips.gateFunction), miips.gateWidth);
else
  fprintf('gate width: Inf (standard MIIPS)\n');

end

