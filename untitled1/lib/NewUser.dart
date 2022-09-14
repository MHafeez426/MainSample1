import 'package:flutter/material.dart';
import 'package:untitled1/Homepage.dart';
import 'package:untitled1/Loginpage.dart';

class NewUser extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text(
        'Sign UP', style: TextStyle(fontSize: 30, color: Colors.blue),),
      ),
      body: Center(
        child: Column(
            children: [ const
        Padding(
        padding:EdgeInsets.all(15),
        child: TextField(decoration: InputDecoration(
            label: Text("Username"),
            hintText: "Username",
            hintStyle: TextStyle(fontSize: 15, color: Colors.black),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))
        ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(15),
        child: TextField(decoration: InputDecoration(
            label: Text("Email"),
            hintText: "Email",
            hintStyle: TextStyle(fontSize: 15, color: Colors.black),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))
        ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(15),
        child: TextField(decoration: InputDecoration(
            label: Text("Password"),
            hintText: "Password",
            hintStyle: TextStyle(fontSize: 15, color: Colors.black),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))
        ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(15),
        child: TextField(decoration: InputDecoration(
            label: Text("Confirm password"),
            hintText: "Confirm Password",
            hintStyle: TextStyle(fontSize: 15, color: Colors.black),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))
        ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: ElevatedButton(onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Homepage()));
        }, child: Text("Sign Up")),),
      Row(children:[Text("Already have an account,",style: TextStyle(fontSize: 12),),
        TextButton(onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Loginpage()));
      }, child: Text("Login", style: TextStyle(fontSize: 15),)),
      ],
      ),
        ],
      ),
    ),);
  }

}