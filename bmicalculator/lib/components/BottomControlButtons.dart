import 'package:bmicalculator/constant-variables.dart';
import 'package:flutter/material.dart';

class BottomConrolButton extends StatelessWidget {
  final Function ontap;
  final String buttontext;
  BottomConrolButton({@required this.buttontext, @required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
            child: Text(
          buttontext,
          style: Kcalculatebuttonstyle,
        )),
        color: Colors.pink,
        height: Kbottomcontainerheight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
