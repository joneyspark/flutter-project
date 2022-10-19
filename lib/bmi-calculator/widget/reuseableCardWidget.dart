import 'package:flutter/material.dart';

class reuseableCardWidget extends StatelessWidget {
  const reuseableCardWidget({
    Key? key,
    required this.colour,
    required this.cardChild,
    this.onPress,
  }) : super(key: key);

  final Color colour;
  final Widget cardChild;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
