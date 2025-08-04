import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:softech_user_app/utils/theme.dart';
import 'package:softech_user_app/viewmodels/home_navbar_viewmodel.dart';
import 'package:softech_user_app/views/roles_screen.dart';
import 'package:softech_user_app/views/attendance_screen.dart';
import 'package:softech_user_app/views/task_screen.dart';

class NavHomeScreen extends StatelessWidget {
  const NavHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeNavbarViewmodel navbarViewModel = context
        .watch<HomeNavbarViewmodel>();
    return Scaffold(
      body: navbarViewModel.currentIndex == 0
          ? const TaskScreen()
          : navbarViewModel.currentIndex == 1
          ? const AttendanceScreen()
          : navbarViewModel.currentIndex == 2
          ? const Roles()
          : Center(child: Text('Unknown Screen')),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'DRS'),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'Attendance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: 'Roles',
          ),
        ],
        currentIndex: navbarViewModel.currentIndex,
        onTap: (index) {
          navbarViewModel.setCurrentIndex(index);
        },
      ),
    );
  }
}
