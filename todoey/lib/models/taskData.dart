import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [Task(name: 'poop'), Task(name: 'piss')];

  int get taskCount {
    return _taskList.length;
  }

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  void addTask(String taskLabel) {
    _taskList.add(Task(name: taskLabel));
    notifyListeners();
  }

  void toggleDone(int index) {
    _taskList[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _taskList.removeAt(index);
    notifyListeners();
  }
}
