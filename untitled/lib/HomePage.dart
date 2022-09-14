import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(
    MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home List"),
      ),
      body: ListView(
        children: [
          Card(
              child: ListTile(
                  leading: Icon(Icons.search),
                  title: Text("search"),
                  trailing: Icon(Icons.arrow_circle_right_outlined)),),
              Card(color: Colors.deepOrangeAccent,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCbIOafUaRohL3ALeTyK7048iFPz18Gg2h0A&usqp=CAU"),
                  backgroundColor: Colors.black54,
                ),
                title: Text("Serach2"),
                trailing: Icon(Icons.arrow_circle_right),
                onTap: () {Fluttertoast.showToast(msg: "Hello",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM

                );

                },
              ),),
              ListTile(
                  leading:
                      CircleAvatar(backgroundImage: AssetImage("assets/Item3.jpg")),
                  title: Text("search"),
                  trailing: Wrap(
                    spacing: 30,
                    children: [Icon(Icons.message), Icon(Icons.phone)],
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Sending Message")));
                  }),
        ],
      ),
    );
  }
}
