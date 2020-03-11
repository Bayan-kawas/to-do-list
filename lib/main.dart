import 'package:flutter/material.dart';
import 'checkBox.dart';
import 'tasks.dart';
import 'toDo.dart';


List toDosFiltered;
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
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  int currRadio;


  void initState() {
    currRadio ;
    ToDo.filterType = '';
    ToDo.filterChoose = false;
    super.initState();
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
              ),
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          Text('All'),
          Radio(
            value: 1,
            groupValue: currRadio,
            onChanged: (int value) {
              setState(() {
                currRadio = value;
                ToDo.filterType = 'all';
                ToDo.filterChoose=true;
                filter(ToDo.filterType);
              });
            },
          ),
          Text("Completed"),
          Radio(
            value: 2,
            groupValue: currRadio,
            onChanged: (int value) {
              setState(() {
                currRadio = value;
                ToDo.filterType = 'completed';
                ToDo.filterChoose=true;
                filter(ToDo.filterType);
              });
            },
          ),
          Text('Pending'),
          Radio(
            value: 3,
            groupValue: currRadio,
            onChanged: (int value) {
              setState(() {
                currRadio = value;
                ToDo.filterType = 'pending';
                ToDo.filterChoose=true;
                filter(ToDo.filterType);
              });
            },
          ),
        ],
      ),
    );
  }
}

addTodo(String task) {
  ToDo toDo = ToDo(task); //change contentTask for each new object
  ToDo.toDos.add(toDo);
}

filter(String filterType) {
  if (filterType == 'completed') {
    toDosFiltered = [];
    int i = 0;
    for ( i = 0; i < ToDo.toDos.length; i++) {
      if (ToDo.toDos[i].completed == true) {
        toDosFiltered.add(ToDo.toDos[i]);
        print(ToDo.toDos[i].contentTask);
      }
    }
    print(toDosFiltered.length);
    print('completed');
  } else if (filterType == 'pending'){
    toDosFiltered = [];
    int i = 0;
    for ( i = 0; i < ToDo.toDos.length; i++) {
      if (ToDo.toDos[i].completed == false) {
        toDosFiltered.add(ToDo.toDos[i]);
        print(ToDo.toDos[i].contentTask);
    }
    }
    print(toDosFiltered.length);
    print('pending');
  } else {
  toDosFiltered = [];
  int i=0;
    for ( i = 0; i < ToDo.toDos.length; i++) {
    toDosFiltered.add(ToDo.toDos[i]);
    print(ToDo.toDos[i].contentTask);
    }
    print(toDosFiltered.length);
    print('All');
  }
}
