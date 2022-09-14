import 'package:flutter/material.dart';
import 'package:sample1/HomePage.dart';
import 'package:sample1/Registration.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        shadowColor: Colors.orangeAccent,
        title: const Center(
            child: Text("LOGIN PAGE",
                style: TextStyle(fontSize: 25, color: Colors.black12))),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(
              child: Text("Login Page",
                  style: TextStyle(fontSize: 45, color: Colors.deepPurple))),
          const Padding(
            padding:
            EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                label: Text("username"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              obscuringCharacter: "#",
              obscureText: true,

              decoration: InputDecoration(
                label: Text("password"),
                hintText: "Enter Username",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
            width: 200,
            child: ElevatedButton(onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            }, child: const Text("LOGIN")),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 280),
              child: TextButton(onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Registration()));
              }, child: const Text("Not a User? click here"))
          )

        ],
      ),
    );
  }
}
