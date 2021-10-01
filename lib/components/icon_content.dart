import 'package:flutter/material.dart';

import 'cardtheme.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.symbol, required this.label});
  final IconData symbol;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          symbol,
          size: 40.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
