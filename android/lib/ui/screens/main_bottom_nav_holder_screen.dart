import 'package:flutter/material.dart';

import '../../widgets/tm_app_bar.dart';
import 'cancelled_task_list_screen.dart';
import 'completed_task_list_screen.dart';
import 'new_task_list_screen.dart';
import 'progress_task_list_screen.dart';

class MainBottomNavHolderScreen extends StatefulWidget {
  const MainBottomNavHolderScreen({super.key});
  static const String name = "/MainBottomNavHolderScreen";

  @override
  State<MainBottomNavHolderScreen> createState() =>
      _MainBottomNavHolderScreenState();
}

class _MainBottomNavHolderScreenState extends State<MainBottomNavHolderScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screen=[
    NewTaskListScreen(),
    ProgressTaskListScreen(),
    CancelledTaskListScreen(),
    CompletedTaskListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: _screen[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.new_label_outlined),
            label: "New",
          ),
          NavigationDestination(
            icon: Icon(Icons.access_time),
            label: "progress",
          ),
          NavigationDestination(
            icon: Icon(Icons.cancel_outlined),
            label: "Cancel",
          ),
          NavigationDestination(icon: Icon(Icons.done), label: "Completed"),
        ],
      ),
    );
  }
}
