import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../widgets/screen_background.dart';
import '../../widgets/tm_app_bar.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});
  static const String name = "/UpdateProfile";
  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            spacing: 8,
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 60),
              Text("Update profile", style: TextTheme.of(context).titleLarge),
              SizedBox(height: 8),

              TextFormField(decoration: InputDecoration(hintText: "Email")),
              TextFormField(
                decoration: InputDecoration(hintText: "First Name"),
              ),
              TextFormField(decoration: InputDecoration(hintText: "Last Name")),
              TextFormField(decoration: InputDecoration(hintText: "Mobile")),
              TextFormField(decoration: InputDecoration(hintText: "Password")),
              SizedBox(height: 8),
              FilledButton(
                onPressed: () {},
                child: Icon(Icons.arrow_circle_right_outlined),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
