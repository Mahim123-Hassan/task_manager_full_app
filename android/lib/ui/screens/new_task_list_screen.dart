import 'package:flutter/material.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 8,

        children: [
          SizedBox(),
          _buildTaskSummaryListView(),
        ],
      ),
    );
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

                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Column(
                    children: [
                      Text("12", style: TextTheme.of(context).titleMedium),
                      Text("New", style: TextTheme.of(context).labelMedium?.copyWith(color: Colors.black)),
                    ],
                  ),
                ),
              );
            },
          ),
        );
  }
}
