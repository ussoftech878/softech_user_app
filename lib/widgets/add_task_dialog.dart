import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softech_user_app/utils/images.dart';

void show_add_task_dialog(BuildContext context) {
  showDialog(
    barrierColor: Color.fromRGBO(1, 89, 121, 0.50),
    context: context,
    builder: (BuildContext context) {
      return Dialog(child: AddTaskDialogContent());
    },
  );
}

class AddTaskDialogContent extends StatefulWidget {
  @override
  State<AddTaskDialogContent> createState() => _AddTaskDialogContentState();
}

class _AddTaskDialogContentState extends State<AddTaskDialogContent> {
  final TextEditingController _dateController = TextEditingController();

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 675.w),
        child: Padding(
          padding: EdgeInsets.all(30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Task',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20.w),
              TextField(decoration: InputDecoration(hintText: 'Add task')),
              SizedBox(height: 20.w),
              TextField(
                controller: _dateController,
                readOnly: true,
                decoration: InputDecoration(
                  hintText: 'Select Date',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                onTap: () => _pickDate(context),
              ),
              SizedBox(height: 20.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110.w,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Cancel'),
                    ),
                  ),
                  SizedBox(
                    width: 110.w,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Task added successfully!')),
                        );
                      },
                      child: Text('Add'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
