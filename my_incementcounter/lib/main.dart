import 'package:flutter/material.dart';
void main(){
  runApp(IncrementCounter());
}
class IncrementCounter extends StatefulWidget {
  @override
  IncrementCounterState createState() => IncrementCounterState();
}

class IncrementCounterState extends State<IncrementCounter> {
  int count=0;
  void increment(){
    setState(() {
      count=count+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed:increment,
          child: Icon(
            Icons.plus_one,
          ),
          ),
       appBar: AppBar(
         title: Text('Flutter Increment Counter',style: TextStyle( color: Colors.black ),),
         
       ), 
       body:Center(
           child: Text('Count =  '+count.toString(),
           style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 30,
             color: Colors.black,
           ),
           ),
           ),
      ),
    );
  }
}