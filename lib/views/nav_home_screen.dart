import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:softech_user_app/utils/theme.dart';
import 'package:softech_user_app/viewmodels/home_navbar_viewmodel.dart';
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
          ? Center(child: Text('Attendance Screen'))
          : Center(child: Text('Unknown Screen')),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Daily Tasks'),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'attendance',
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
