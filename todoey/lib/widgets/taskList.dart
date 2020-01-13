import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskData.dart';
import 'package:todoey/widgets/taskTile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            label: taskData.taskList[index].name,
            isChecked: taskData.taskList[index].isDone,
            onChange: (value) {
              Provider.of<TaskData>(context).toggleDone(index);
            },
            onLongPress: () {
              Provider.of<TaskData>(context).deleteTask(index);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
