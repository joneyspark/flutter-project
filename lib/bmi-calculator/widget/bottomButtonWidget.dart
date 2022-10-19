import 'package:flutter/material.dart';
import 'package:helloworld/bmi-calculator/constants.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({
    Key? key,
    required this.buttonTitle,
    this.onTap,
  }) : super(key: key);

  final String buttonTitle;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        color: bottomContainerColour,
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
