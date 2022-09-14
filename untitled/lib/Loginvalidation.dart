import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sample1/HomePage.dart';

import 'Registration.dart';

void main(){
  runApp(MaterialApp(home: Loginvalidation(),debugShowCheckedModeBanner: false));

}
class Loginvalidation extends StatelessWidget{
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Form(
        key: _form, child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: const InputDecoration(
                label: Text("Username"),
                border: OutlineInputBorder()),
              validator: (text){
                if(text== null|| !(text.contains("@") )||text.isEmpty){
                  return "ENter valid email address";
                }
                return null;
              }
              ),
            ),
          Container(
            padding: EdgeInsets.all(30),
            child: TextFormField(
              decoration: InputDecoration(
                label: Text('Password'),
                border: OutlineInputBorder()),
              validator: (text){
                if(text==null||!(text.length<=6)){
                  return "Pasword is Wrong";
                }
                return null;
              }
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 60,right: 40),
            child: ElevatedButton(
              onPressed: () {
                final isValid = _form.currentState!.validate();
                if(isValid){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                }else{
                  Fluttertoast.showToast(msg: "Username/password is Incorrect",gravity: ToastGravity.BOTTOM,
                  fontSize: 16.0);
                }
              },
              child:Text("Submit"),
            ),
          ),

          Center(
            child:Row(children:[ TextButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Registration()));
            }, child: Text("Forgot password"),
          ),

      ]
          ),
          ),
        ],

      ),
      ),
    );
  }

}