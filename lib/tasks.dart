import 'package:flutter/material.dart';
import 'package:to_do_list/main.dart';
import 'checkBox.dart';
import 'toDo.dart';

int index;

class Tasks extends StatefulWidget {
  List tasks;
  int id;

  Tasks(this.tasks, this.id);

  @override
  _TasksState createState() => _TasksState(tasks, id);
}

class _TasksState extends State<Tasks> {
  List task;
  int id;

  _TasksState(this.task, this.id);

  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: toDosTask.length,
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
                          CheckBox(task, ToDoList.id),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              task[index].contentTask,
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
                                toDosTask.removeAt(ToDoList.id);
                                index-1;
                               // ToDoList.id+1;
                              });
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
