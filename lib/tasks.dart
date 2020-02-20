import 'package:flutter/material.dart';
import 'package:to_do_list/main.dart';
import 'checkBox.dart';


class Tasks extends StatefulWidget {
  List tasks;
  Tasks(this.tasks);

  @override
  _TasksState createState() => _TasksState(tasks);
}

class _TasksState extends State<Tasks> {
  List tasks;

  _TasksState(this.tasks);

  @override
  Widget build(BuildContext context) {
    if (tasks != null) {
      return ListView.builder(
          itemCount: tasksList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
                children: <Widget>[
            Container(
            padding: EdgeInsets.all(5),
            width: 400,
            child: Card(
            color: Colors.white30,
            child: Padding(
            padding: EdgeInsets.all(5),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            CheckBox(),
            Padding(
            padding: EdgeInsets.all(20),
            child: Text(tasks[index],
            style: TextStyle(
            color :currentColor,
            ),
            ),

            ),
            InkWell(
            child: Icon(
            Icons.clear,
            color: Colors.red,
            size: 30.0,

            ),
            onTap: () {
            setState(() {
            tasksList.removeAt(index);
            });
            },
            ),
            ],
            ),
            ),
            ),
            )
            ,
            ]
            ,
            );
          });
    }
  }
}

