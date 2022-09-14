
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: List2(),debugShowCheckedModeBanner: false,));

}
class List2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _List2State();
}

class _List2State extends State {
  List<String> fruits = ["Apple", "Orange", "grape", "Banana"];
  List<String> images =

  ["assets/apple.jpg","assets/orange.jpg","assets/grape.jpeg","assets/banana.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.Builder"),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext,index) {
          return Card(child: ListTile(
            leading: Image.asset(images[index] ),
            title: Text(fruits[index]),
          ),);
          },
          separatorBuilder:(BuildContext context, index)=> const Divider(),
          itemCount: images.length
      )









      //body: ListView.builder(itemBuilder: (BuildContext, index) {
        //return Card(child: ListTile(
          //leading: Image.asset(images[index]),
          //title: Text(fruits[index]),
        //),);
      //},
        //itemCount: images.length,
    //),
    );
  }
}