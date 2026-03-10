import 'package:flutter/material.dart';

import '../../widgets/task_card.dart';

class CompletedTaskListScreen extends StatefulWidget {
  const CompletedTaskListScreen({super.key});

  @override
  State<CompletedTaskListScreen> createState() =>
      _CompletedTaskListScreenState();
}

class _CompletedTaskListScreenState extends State<CompletedTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
    );
    ;
  }
}
