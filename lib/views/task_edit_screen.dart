import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskEditScreen extends StatelessWidget {
  const TaskEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Task')),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Task Title')),
            SizedBox(height: 16.h),
            TextField(
              decoration: InputDecoration(labelText: 'Task Description'),
            ),
            SizedBox(height: 16.h),
            ElevatedButton(
              onPressed: () {
                // Save task logic here
              },
              child: Text('Save Task'),
            ),
          ],
        ),
      ),
    );
  }
}
