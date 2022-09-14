import 'package:flutter/material.dart';
import 'package:untitled1/Loginpage.dart';
import 'package:untitled1/NewUser.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MySplash()));
}

class MySplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey,
        title: Center(
        child: Text("WELCOME", style: TextStyle(
            color: Colors.black87, fontSize: 35, fontStyle: FontStyle.italic),),),),
      body: Container(decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/splash.jpg")
        ),),
        child: Center(
          child: Column(
                children: [
                      Padding(padding: EdgeInsets.all(150),
                              child: MaterialButton(color: Colors.deepPurple,
                                onPressed: () {
                              Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (context) => Loginpage()));
                            },
                                child: const Text("LOGIN"),


                                ),
                              ),
        Padding(padding: EdgeInsets.all(10),
                        child: MaterialButton(color: Colors.green,onPressed: () {
                              Navigator.pushReplacement(
                                  context, MaterialPageRoute(builder: (context) => NewUser()));
                            },child: const Text("SIGN UP"),
                            ),
        ),

                    ],
                  ),
              ),
          ),
    );
  }
}