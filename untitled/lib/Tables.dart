import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyTable(),debugShowCheckedModeBanner: false));
}
class MyTable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text("name"),
          ),
          DataColumn(label: Text("Age"),),
          DataColumn(label: Text("Role")),

        ], rows: [DataRow(cells: [
          DataCell(Text("SArah")),
    DataCell(Text("19")),
    DataCell(Text("Student")),
        ],
      ),
        DataRow(cells:[
          DataCell(Text("Jennifer")),
          DataCell(Text("21")),
          DataCell(Text("Athlete")),
        ]),
        DataRow(cells: [
          DataCell(Text("Hafeez")),
          DataCell(Text("26")),
          DataCell(Text("Eployee")),
        ]),
      ],
      )
    );
  }

}