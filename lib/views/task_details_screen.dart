import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softech_user_app/utils/images.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('8/4/2025')),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: Center(child: Text('Task details will be displayed here.')),
      ),
    );
  }
}
