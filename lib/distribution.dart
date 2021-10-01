import 'dart:math';

class distribution {}

double _nextNextGaussian = Random().nextDouble();
bool _haveNextNextGaussian = false;
double rng = Random().nextDouble();
double rng2 = Random().nextDouble();

double nextGaussian() {
  if (_haveNextNextGaussian) {
    _haveNextNextGaussian = false;
    return _nextNextGaussian;
  } else {
    double v1, v2, s;
    do {
      v1 = 2 * rng - 1;
      v2 = 2 * rng2 - 1;
      s = v1 * v1 + v2 * v2;
    } while (s >= 1 || s == 0);
    double multiplier = sqrt(-2 * log(s) / s);
    _nextNextGaussian = v2 * multiplier;
    _haveNextNextGaussian = true;
    return v1 * multiplier;
  }
}
