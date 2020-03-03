import 'package:flutter/material.dart';
import 'checkBox.dart';
import 'tasks.dart';
import 'toDo.dart';

List<ToDo> toDos = [];

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget  {
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
                controller: myController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'What needs to be done ?',
                ),
                textInputAction: TextInputAction.done,
                onSubmitted: (term) {
                  setState(() {
                    addTodo(term);
                    myController.clear();
                  });
                }),
            Expanded(
              child: Container(
                height: 400,
                child: Tasks(),
              ),
            )
          ],
        )),
      ),
    );
  }
}

addTodo(String task) {
  ToDo toDo = ToDo(task);
  ToDo.toDos.add(toDo);
}
