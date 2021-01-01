import 'package:flutter/material.dart';
//enum PressedSymbol{
 // plus,minus
//}
enum Gender { male, female }
class RoundIconButton extends StatelessWidget {
  final IconData iconsymbol;
  //final PressedSymbol sysmbol;
  final Function onpressed;
  RoundIconButton({@required this.iconsymbol,@required this.onpressed,});



  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
    onPressed: onpressed,
      
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      child: Icon(
        iconsymbol,
      ),
    );
  }
}
