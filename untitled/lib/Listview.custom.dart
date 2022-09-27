import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:List3()));
}
class List3 extends StatefulWidget{
  @override
  State<List3> createState() => _List3State();
}

class _List3State extends State<List3> {
  List<String> items = ["1","2","3","4"];
  List<String> images =

  ["assets/apple.jpg","assets/orange.jpg","assets/grape.jpeg","assets/banana.jpg"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("ListView"),
      ),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((BuildContext context,int index) {
        return Card(
          child: ListTile(
            leading: Text(items[index]),
            trailing: Image.asset(images[index]),
            
          ),
        );
      },
      childCount: items.length,
      )
      ),
    );
  }
}