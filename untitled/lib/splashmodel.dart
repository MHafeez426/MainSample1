import 'dart:ui';

import 'package:flutter/material.dart';
void main(){
  runApp(MySplash());

}
class MySplash extends StatelessWidget {


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        body:Container(
          decoration:const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
                image: NetworkImage("https://images.pexels.com/photos/1563356/pexels-photo-1563356.jpeg?auto=compress&cs=tinysrgb&w=600")),
          ),
          child: Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Image(
                  width:80,
                  height:80,
                  image:AssetImage("assets/fluttericon.png") ),

              Text("FIND YOUR PATH",style:TextStyle(fontStyle:FontStyle.italic,fontSize:40,color:Colors.amber

              )),

            ],
            ),
          ),
        ),
      ),
    );
  }
}