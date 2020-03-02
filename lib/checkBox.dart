import 'package:flutter/material.dart';
import 'main.dart';
import 'toDo.dart';

class CheckBox extends StatefulWidget {
  ToDo toDo;

  CheckBox(toDo){
    this.toDo = toDo;
    print(this.toDo.contentTask);
    print(this.toDo.completed);
  }

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {

  bool checked;


  @override
  void initState() {
    this.checked = widget.toDo.completed;
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: checked,
          onChanged: (bool val) {
            setState(() {
              checked = val;
            });
          },
        ),
      ],
    );
  }
}
