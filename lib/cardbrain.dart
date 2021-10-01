import 'package:cards/distribution.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'card.dart';
import 'ghettomath.dart';

class cardBrain {
  int _cardNumber = 0;
  double min = 1;
  double max = 5;
  double range = 5 - 1;
  double mid = (5 + 1) / 2.0;
  double unitGauss = nextGaussian();
  double bias = 2;
  double biasFactor = exp(2);
  double skew = 2;
  //double retval = ((5 + 1) / 2.0) +
  // ((5 - 1) * ((exp(2)) / ((exp(2)) + exp(-1 * nextGaussian() / 2)) - 0.5));

  final List<card> _cardlist = [
    card('+1 point', 1), //0
    card('+2 points', 2), //1
    card('+3 points', 3), //2
    card('-1 point', 4), //3
    card('-2 points', 5), //4
    card('-3 points', 6), //5
    card('Swap points with any team', 7) //6
  ];

  int getCardWeight(int x) {
    return _cardlist[x].weight;
  }

  String getCard() {
    int cardweight = 0;
    Random rnd;
    int min = 1;
    int max = 67;
    rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    // print("$r is in the range of $min and $max");
    if (r >= 1 && r < 15) {
      print("$r is in the range of 1 and 14: cardweight is 1");
      cardweight = 1;
    }
    if (r >= 15 && r < 25) {
      print("$r is in the range of 15 and 24: cardweight is 2");
      cardweight = 2;
    }
    if (r >= 25 && r < 30) {
      print("$r is in the range of 25 and 130: cardweight is 3");
      cardweight = 3;
    }
    if (r >= 30 && r < 45) {
      print("$r is in the range of 30 and 44: cardweight is 4");
      cardweight = 4;
    }
    if (r >= 45 && r < 55) {
      print("$r is in the range of 45 and 54: cardweight is 5");
      cardweight = 5;
    }
    if (r >= 55 && r < 60) {
      print("$r is in the range of 55 and 59: cardweight is 6");
      cardweight = 6;
    }
    if (r >= 60 && r < 67) {
      print("$r is in the range of 60 and 67: cardweight is 7");
      cardweight = 7;
    }
    cardweight = cardweight - 1;
    //print('New WEight is : $cardweight');
    return _cardlist[cardweight].cardinfo;
  }
}
