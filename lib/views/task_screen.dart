import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softech_user_app/route_generator.dart';
import 'package:softech_user_app/utils/images.dart';
import 'package:softech_user_app/widgets/add_task_dialog.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.5,
              image: AssetImage(PngAssests.background),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Center(
                  child: Text(
                    'Daily Tasks',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20, // Example item count
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: ListTile(
                        title: Text('Task ${index + 1}'),
                        subtitle: Text('Description of task ${index + 1}'),
                        leading: Icon(Icons.task),
                        trailing: Icon(Icons.check_circle_outline),
                      ),
                      onTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            show_add_task_dialog(context);
          },
          child: Icon(Icons.add),
          tooltip: 'Add New Task',
        ),
      ),
    );
  }
}
