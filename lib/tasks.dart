import 'package:flutter/material.dart';
import 'package:to_do_list/main.dart';
import 'checkBox.dart';
import 'toDo.dart';

class Tasks extends StatefulWidget {
  Tasks();

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  _TasksState();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ToDo.toDos.length,
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
                          CheckBox(ToDo.toDos[index]),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: TaskText(ToDo.toDos[index].contentTask),
                          ),
                          InkWell(
                            child: Icon(
                              Icons.clear,
                              color: Colors.red,
                              size: 30.0,
                            ),
                            onTap: () {
                              ToDo.toDos.removeAt(index);
                              dispose();
                            },
                          ),
                        ],
                      )),
                ),
              ),
            ],
          );
        });
  }
}
//fun(){
//  if(checked==true){
//    currentColor==Colors.amber;
//  }else{
//    currentColor==Colors.black26;
//  }
//}

class TaskText extends StatefulWidget {
  String text;

  TaskText(this.text);

  @override
  _TaskTextState createState() => _TaskTextState();
}

class _TaskTextState extends State<TaskText> {
  var color;

  @override
  void initState() {
    // TODO: implement initState
    color=Colors.black;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(widget.text, style: TextStyle(color: color)),
      onTap: () {
        setState(() {
          color = Colors.yellow;
        });
      },
    );
  }
  @override
  void dispose() {
    color=Colors.black;
    super.dispose();
  }
}
