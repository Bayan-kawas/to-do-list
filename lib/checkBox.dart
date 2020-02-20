import 'package:flutter/material.dart';
import 'tasks.dart';

bool checked = false;
Color currentColor;

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  Color currentColor = Colors.black54 ;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checked,
      onChanged: (bool val) {
        setState(() {
          checked = val;
          currentColor = Colors.green;
        });
      },
    );
  }
}




