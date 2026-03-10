import 'package:flutter/material.dart';

import '../../widgets/task_card.dart';
import 'add_new_task_screen.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 8,

          children: [
            SizedBox(),
            _buildTaskSummaryListView(),
            ListView.separated(
              itemCount: 10,
              primary: false,
              shrinkWrap: true,

              itemBuilder: (context, index) {
                return taskcard();
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 8);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapAddNewTaskButton,
        child: Icon(Icons.add),
      ),
    );
  }

  void _onTapAddNewTaskButton(){
    Navigator.pushReplacementNamed(context, AddNewTaskScreen.name);

  }

  SizedBox _buildTaskSummaryListView() {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,

        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            color: Colors.white,
            margin: EdgeInsets.only(left: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                children: [
                  Text("12", style: TextTheme.of(context).titleMedium),
                  Text(
                    "New",
                    style: TextTheme.of(
                      context,
                    ).labelMedium?.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
