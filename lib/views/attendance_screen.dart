import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softech_user_app/utils/images.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.5,
            image: AssetImage(PngAssests.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Check In'),
                  ),
                ),
                SizedBox(height: 50.h),
                SizedBox(
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Check Out'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
