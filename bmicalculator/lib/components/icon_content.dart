import 'package:bmicalculator/constant-variables.dart';
import 'package:flutter/material.dart';



class Iconcontent extends StatelessWidget {
  Iconcontent({@required this.iconss, this.textt});
  final IconData iconss;
  final String textt;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconss,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(textt, style: Klabeltextstyle)
      ],
    );
  }
}
