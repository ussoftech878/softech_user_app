import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskAddScreen extends StatelessWidget {
  const TaskAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Task')),
      body: Center(child: Text('Task Add Screen')),
    );
  }
}
