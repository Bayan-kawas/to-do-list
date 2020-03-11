import 'package:flutter/material.dart';
import 'main.dart';
import 'toDo.dart';

class CheckBox extends StatefulWidget {
  ToDo toDo;

  CheckBox({Key key, this.toDo}) : super(key: key);

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
              widget.toDo.completed=checked;
              print( widget.toDo.completed);
            });
          },
        ),
      ],
    );
  }
}
