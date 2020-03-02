import 'package:flutter/material.dart';
import 'checkBox.dart';
import 'tasks.dart';
import 'toDo.dart';

List tasksList = [];
List<ToDoList> toDosTask=[];
int id = 0;
bool completed=false;

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Center(
            child: Text('To Do List'),
          ),
        ),
        body: SafeArea(
            child: Column(
          children: <Widget>[
            TextField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'What needs to be done ?',
                ),
                textInputAction: TextInputAction.done,
                onSubmitted: (term) {
                  setState(() {

                    todo(term,id,completed);
                    id++;
                    print(id);


                    myController.clear();
                  });
                }),
            Expanded(
              child: Container(
                height: 400,
                child: Tasks(toDosTask,id),
              ),
            )
          ],
        )),
      ),
    );
  }
}

toDoList(String task){
  tasksList.add(task);
  return tasksList;
}

todo(String task,int id ,bool completed){
 ToDoList newToDo=ToDoList(contentTask:task,id:id ,completed:completed);
 toDosTask.add(newToDo);
return toDosTask;
}
