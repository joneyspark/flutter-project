import 'package:flutter/material.dart';
import 'package:helloworld/bmi-calculator/bmi_calculator_view.dart';
import 'package:helloworld/bmi-calculator/constants.dart';
import 'package:helloworld/bmi-calculator/widget/bottomButtonWidget.dart';
import 'package:helloworld/bmi-calculator/widget/reuseableCardWidget.dart';

class BmiResultView extends StatelessWidget {
  const BmiResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Result"),
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
                children: const [
                  Text(
                    "Normal",
                    style: kresultTextStyle,
                  ),
                  Text(
                    "180",
                    style: kbmiTextStyle,
                  ),
                  Text(
                    "Your BMI Result is quite low. You should eat more.",
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
