import 'dart:math';

import 'distribution.dart';

double retval = ((2 + 1) / 2.0) +
    ((2 - 1) * ((exp(2)) / ((exp(2)) + exp(-1 * nextGaussian() / 2)) - 0.5));
