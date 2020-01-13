import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String label;
  final Function onChange;
  final Function onLongPress;

  TaskTile({this.isChecked, this.label, this.onChange, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        label,
        style: isChecked
            ? TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: this.onChange),
    );
  }
}
