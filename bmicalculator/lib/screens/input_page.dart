



import 'package:bmicalculator/calculation_brain/calulation.dart';
import 'package:bmicalculator/components/BottomControlButtons.dart';
import 'package:bmicalculator/components/icon_content.dart';
import 'package:bmicalculator/components/resuable_card.dart';
import 'package:bmicalculator/components/round_icon_button.dart';
import 'package:bmicalculator/constant-variables.dart';
import 'package:bmicalculator/screens/result_page.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class BmiCalculator extends StatefulWidget {
  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 30;
  /* void cal(PressedSymbol symbol){
   
    setState(() {
       if(symbol==PressedSymbol.plus)
    {
      weight++;
      age++;

    }
    if(symbol==PressedSymbol.minus)
    {
      weight--;
      age--;
    }
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Bmi Calculator",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onpress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? Kactivationbarcolor
                          : Kinactivationbarcolor,
                      cardchild: Iconcontent(
                        iconss: FontAwesomeIcons.male,
                        textt: "Male",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onpress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? Kactivationbarcolor
                          : Kinactivationbarcolor,
                      cardchild: Iconcontent(
                        iconss: FontAwesomeIcons.female,
                        textt: "Female",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardchild: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: Klabeltextstyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: Knumberstyle,
                        ),
                        Text(
                          "cm",
                          style: Klabeltextstyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Kactivetrackcolor,
                          inactiveTrackColor: Kinactivetrackcolor,
                          thumbColor: Kthumbcolor,
                          overlayColor: Koverlaycolor,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.round();
                              });
                            }))
                  ],
                ),
                colour: Kactivationbarcolor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: Klabeltextstyle,
                          ),
                          Text(
                            weight.toString(),
                            style: Knumberstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                iconsymbol: FontAwesomeIcons.plus,
                                onpressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                iconsymbol: FontAwesomeIcons.minus,
                                onpressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                      colour: Kactivationbarcolor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "AGE",
                              style: Klabeltextstyle,
                            ),
                            Text(
                              age.toString(),
                              style: Knumberstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  iconsymbol: FontAwesomeIcons.plus,
                                  onpressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  iconsymbol: FontAwesomeIcons.minus,
                                  onpressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                        colour: Kactivationbarcolor),
                  ),
                ],
              ),
            ),
            BottomConrolButton(
              buttontext: "CALCULATE",
              ontap: () {
               CalculationBrain cal =  CalculationBrain(height, weight);
               Navigator.push(context, MaterialPageRoute(builder:(context
               )=>ResultPage(
                  bmiresult: cal.calculateBMI(),
                  resultText: cal.calculateBMI(),
                  interpretation: cal.geInterpritation(),

               ),
                ),
               );
              },
            )
          ],
        ),
      ),
    );
  }
}
