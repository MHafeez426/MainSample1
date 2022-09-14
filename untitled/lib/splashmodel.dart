import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sample1/LoginForm.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MySplash()));
}

class MySplash extends StatefulWidget {
  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.pexels.com/photos/1563356/pexels-photo-1563356.jpeg?auto=compress&cs=tinysrgb&w=600")),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    width: 80,
                    height: 80,
                    image: AssetImage("assets/fluttericon.png")),
                Text("FIND YOUR PATH",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 40,
                        color: Colors.amber)),
              ],
            ),
          ),
        ),
    );
  }
}
