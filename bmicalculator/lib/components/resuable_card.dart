import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
   ReusableCard({ @required this.colour,this.cardchild,this.onpress});
 final Color colour;
 final Widget cardchild;
 final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
          child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
         // color: Color(0xff1d1e33), 
         color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

}