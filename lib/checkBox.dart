import 'package:flutter/material.dart';
import 'main.dart';
import 'toDo.dart';
ToDoList newToDo;



class CheckBox extends StatefulWidget {

  List tasks;
  int index;


  CheckBox(this.tasks,this.index);
  @override
  _CheckBoxState createState() => _CheckBoxState(tasks,index);
}

class _CheckBoxState extends State<CheckBox> {

  int index;
  List tasks;

  _CheckBoxState(this.tasks,this.index);
   bool checked = false;
  Color currentColor;
  color(bool val){
    if(val==false){
      currentColor=Colors.black;
    }else{
      currentColor=Colors.green;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Row(

      children: <Widget>[
        Checkbox(
            value:tasks[index].completed,
            onChanged: (bool val) {
              setState(() {
                tasks[index].completed = val;
                color(checked);
              });
            },
          ),


//        Padding(
//          padding: EdgeInsets.all(20),
//          child: Text(tasks,
//            style: TextStyle(
//              color: currentColor,
//            ),
//          ),
//        ),
      ],
    );
  }
}
