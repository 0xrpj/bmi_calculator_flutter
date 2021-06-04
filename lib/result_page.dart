import 'package:flutter/material.dart';
import 'constants.dart';
import 'resuable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.detailText});

  final String bmiResult;
  final String resultText;
  final String detailText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Expanded(
                child: Text(
              "Your Result",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
            )),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiResult,
                    style: kResultStatus,
                  ),
                  Text(
                    resultText,
                    style: kLabelBoldTextStyle,
                  ),
                  Center(
                    child: Text(
                      detailText,
                      style: kInstructions,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            // onTap: Navigator.pushNamed(context, '/calc'),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ResultPage()));
              Navigator.pop(context);
            },
            child: Container(
                width: double.infinity,
                height: 75.0,
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "RE-CALCULATE",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
