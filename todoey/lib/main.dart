import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskData.dart';
import 'package:todoey/screens/taskScreen.dart';

void main() => runApp(Todoey());

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
