import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../widgets/screen_background.dart';
import 'sign_in_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});
  static const String name = "/ResetPasswordScreen";

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 60),
              Text(
                "Reset Password",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text(
                "minimum length of password should more then 8 letters",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: 8),

              TextFormField(
                decoration: InputDecoration(hintText: "New Password"),
              ),
              SizedBox(height: 8,),
              TextFormField(
                decoration: InputDecoration(hintText: "Confirm Password"),
              ),

              SizedBox(height: 8),
              FilledButton(
                onPressed: _onTapConfirmButton,
                child:Text("Confirm"),
              ),
              SizedBox(height: 24),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    text: "have an account?",
                    children: [
                      TextSpan(
                        style: TextStyle(color: Colors.green),
                        text: "Sign in",
                        recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _onTapConfirmButton(){}
  void _onTapSignInButton(){
    Navigator.pushNamedAndRemoveUntil(context, SignInScreen.name, (protected)=>false);
  }
}
