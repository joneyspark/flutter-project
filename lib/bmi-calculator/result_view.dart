import 'package:flutter/material.dart';
import 'package:helloworld/bmi-calculator/constants.dart';
import 'package:helloworld/bmi-calculator/widget/bottomButtonWidget.dart';
import 'package:helloworld/bmi-calculator/widget/reuseableCardWidget.dart';

class BmiResultView extends StatelessWidget {
  BmiResultView({
    super.key,
    required this.bmiResult,
    required this.bmiText,
    required this.bmiDetails,
  });
  final String bmiResult;
  final String bmiText;
  final String bmiDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Result",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Your Result",
                style: kTitleStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reuseableCardWidget(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiText,
                    style: kresultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kbmiTextStyle,
                  ),
                  Text(
                    bmiDetails,
                    style: kbmiBodyStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButtonWidget(
            buttonTitle: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
