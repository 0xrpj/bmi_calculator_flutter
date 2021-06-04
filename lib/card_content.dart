import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  CardContent({@required this.fontAsmIcon, @required this.caption});

  final IconData fontAsmIcon;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          fontAsmIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          this.caption,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
