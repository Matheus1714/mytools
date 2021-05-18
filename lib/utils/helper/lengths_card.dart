import './exceeded_width_card.dart';
import './is_cellphone_limit.dart';

List<double> lengthsCard(double w, double h) {
  // Default for desktop screen
  double finalWidth = w * 0.25;
  double finalHeight = h * 0.3;

  if (exceededWidthCard(w, h)) {
    finalWidth = 190;
  }

  // For cellphone screnn
  if (isCellPhoneLimite(w, h)) {
    finalWidth = w * 0.85;
    finalHeight = h * 0.20;
  }

  return [finalWidth, finalHeight];
}
