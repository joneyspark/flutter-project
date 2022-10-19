import 'package:flutter/material.dart';
import 'package:helloworld/bmi-calculator/constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key,
    required this.cardIcon,
    required this.gender,
  }) : super(key: key);

  final IconData cardIcon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(gender, style: labelTextStyle)
      ],
    );
  }
}
