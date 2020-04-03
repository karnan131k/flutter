import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ioscalculator(),
    );
  }
}

class Ioscalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Ioscalculator();
  }
}

class _Ioscalculator extends State<Ioscalculator> {
  String text = '0'; //this variable values show in disply
  double num1 = 0.0;
  double num2 = 0.0;
  double remain=0.0;
  String result = '';
  String finalresult = '';
  String opr = '';
  String preopr = '';
  //caluation part
  void calculation(btntext) 
  {
   if (btntext == 'C') 
      {
        text = '0';
        num1 = 0.0;
        num2 = 0.0;
        remain=0.0;
        result = '';
        finalresult = '';
        opr = '';
        preopr = '';
      }
  
     else if(opr == '=' && btntext == '=')
     {
        if(preopr == '+')
        {
            result= (num1+num2).toString();
            finalresult = doesContainDecimal(result);
            num1=double.parse(result);
         
        }
       else  if(preopr == '-')
       {
          result= (num1-num2).toString();
          finalresult = doesContainDecimal(result);
          num1=double.parse(result);
        }
        else if(preopr == 'x')
        {
          result= (num1*num2).toString();
          finalresult = doesContainDecimal(result);
          num1=double.parse(result);
       }
       else if(preopr == '/')
       {
          result= (num1/num2).toString();
          finalresult = doesContainDecimal(result);
          num1=double.parse(result);
       }

     }

    
    else if(btntext == '+' || btntext == '-' || btntext == 'x' || btntext == '/' || btntext == '='  )
    {
      if(num1==0)
      {
        num1=double.parse(result);
      }
      else
      {
        num2=double.parse(result);
      }
      if(opr == '+')
      {
        result= (num1+num2).toString();
        finalresult = doesContainDecimal(result);
        num1=double.parse(result);
      }
      else  if(opr == '-')
      {
        result= (num1-num2).toString();
        finalresult = doesContainDecimal(result);
        num1=double.parse(result);
      }
      else if(opr == 'x')
      {
        result= (num1*num2).toString();
        finalresult = doesContainDecimal(result);
        num1=double.parse(result);
      }
      else if(opr == '/')
      {
        result= (num1/num2).toString();
        finalresult = doesContainDecimal(result);
        num1=double.parse(result);
      }
      
      preopr= opr;
      opr = btntext;
      result= '0';
      result = doesContainDecimal(result);

    }
    else if(btntext == '%') 
    {
    
        num1=double.parse(result);
        remain = num1 / 100;
        result=(remain).toString();
        finalresult = doesContainDecimal(result);
     
    } 
    else if(btntext == '.') 
    {
      if(!result.toString().contains('.')) {
        result = result.toString()+'.';
      }
      finalresult = result;
    }
    
    else if(btntext == '+/-') {
        result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();        
        finalresult = result;        
    
    }
    else
    {
      result = result+btntext;
      finalresult = result;
      
    }

    setState(() {
      text = finalresult;
    });

  }
   String doesContainDecimal(String result) {
    
    if(result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        if(!(int.parse(splitDecimal[1]) > 0))
         return result = splitDecimal[0].toString();
    }
    return result; 
  }

  Widget calbutton(btntext, Color color) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: RaisedButton(
          child: Text(
            btntext,
            style: TextStyle(
              fontSize: 30.0,
              //color: colors.white,
            ),
          ),
          color: color,
          padding: EdgeInsets.all(22.0),
          shape: CircleBorder(),
          onPressed: () {
            calculation(btntext);
          }),
    );
  }

  Widget calbuttonzero(btntext, Color color) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: RaisedButton(
          child: Text(
            btntext,
            style: TextStyle(
              fontSize: 30.0,
              //color: colors.white,
            ),
          ),
          color: color,
          padding:
              EdgeInsets.only(top: 20.0, bottom: 20.0, right: 81.0, left: 81.0),
          shape: StadiumBorder(),
          onPressed: () {
            calculation(btntext);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                  ),
                  textAlign: TextAlign.right,
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calbutton("C", const Color(0xffa5a5a5)),
                calbutton("+/-", const Color(0xffa5a5a5)),
                calbutton("%", const Color(0xffa5a5a5)),
                calbutton('/', Colors.orange),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calbutton("7", const Color(0xff333333)),
                calbutton("8", const Color(0xff333333)),
                calbutton("9", const Color(0xff333333)),
                calbutton('x', Colors.orange),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calbutton("4", const Color(0xff333333)),
                calbutton("5", const Color(0xff333333)),
                calbutton("6", const Color(0xff333333)),
                calbutton('-', Colors.orange),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calbutton("1", const Color(0xff333333)),
                calbutton("2", const Color(0xff333333)),
                calbutton("3", const Color(0xff333333)),
                calbutton('+', Colors.orange),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calbuttonzero("0", const Color(0xff333333)),
                //calbutton("00",const Color(0xff333333)),
                calbutton(".", const Color(0xff333333)),
                calbutton('=', Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
