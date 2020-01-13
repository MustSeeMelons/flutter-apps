import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskData.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskLabel;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskLabel = value;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTaskLabel);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
