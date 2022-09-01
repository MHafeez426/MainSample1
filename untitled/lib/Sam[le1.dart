


import 'package:flutter/material.dart';

void main() {
  runApp(FirstScreen());
}
class FirstScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context){
return MaterialApp(
  darkTheme: ThemeData(primarySwatch: Colors.green),
  home:Scaffold(
    appBar: AppBar(title: Text('Hafeez', style: TextStyle(color: Colors.black87, fontSize: 50))),
    body: Center(
      child: Text('welcome to Flutter',style: TextStyle(color: Colors.deepOrangeAccent, fontSize : 20),
      ),
      ),
    ),
  );

    //throw UnimplementedError();
  }


}