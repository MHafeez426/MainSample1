import 'package:flutter/material.dart';
import 'package:untitled1/NewUser.dart';

import 'Homepage.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Center(
            child: Text("welcome",
                style: TextStyle(fontSize: 30, color: Colors.black45)),
          )),
      body: Center(
        child: Column(
          children: [
            Text(
              "LOGIN",
              style: TextStyle(fontSize: 20, color: Colors.black45),
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Username"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(20),
              child: MaterialButton(
                color: Colors.deepPurple,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: const Text("Login"),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do not have an account",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => NewUser()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
