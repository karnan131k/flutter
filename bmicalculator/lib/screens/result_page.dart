import 'package:bmicalculator/components/BottomControlButtons.dart';
import 'package:bmicalculator/components/resuable_card.dart';
import 'package:bmicalculator/constant-variables.dart';

import 'package:flutter/material.dart';



void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xff0A0E21),
      scaffoldBackgroundColor: Color(0xff0A0E21),
    ),
    home: ResultPage(),
  ));
}

class ResultPage extends StatelessWidget {
  final String bmiresult;
final String resultText;
final String interpretation;
ResultPage({this.bmiresult, this.resultText,this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "BMI Calculator",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your result",
                  style: Kresult_title_textstyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: Kactivationbarcolor,
                cardchild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      bmiresult,
                      style: Kresult_textstyle,
                    ),
                    Text(
                      resultText,
                      style: KBmi_textstyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: Kbmi_bodytextstyle,
                    )
                  ],
                ),
              ),
            ),
            BottomConrolButton(
              buttontext: "RE-CALCULATE",
              ontap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
