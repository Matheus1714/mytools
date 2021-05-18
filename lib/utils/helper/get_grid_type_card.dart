import './is_cellphone_limit.dart';

int getGridTypeCard(double w, double h) {
  int gridType = 1;
  if (isCellPhoneLimite(w, h)) {
    gridType = 2;
  }
  return gridType;
}
