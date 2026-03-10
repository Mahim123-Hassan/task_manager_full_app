import 'package:flutter/material.dart';

import '../../widgets/screen_background.dart';
import '../../widgets/tm_app_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});
  static const String name = '/AddNewTaskScreen';

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 36),
              Text("Add New Task", style: TextTheme.of(context).titleLarge),
              SizedBox(height: 8,),
              TextFormField(
                decoration: InputDecoration(hintText: "title"),
              ),
              SizedBox(height: 8,),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(hintText: "Description"),),
              SizedBox(height: 8,),
              FilledButton(onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined))
            ],
          ),
        ),
      ),
    );
  }
}
