import 'dart:math';

// Adjust dimension for height
double adjustIconDimension(double w, double h) {
  return h / sqrt(pow(w, 2) + pow(h, 2));
}
