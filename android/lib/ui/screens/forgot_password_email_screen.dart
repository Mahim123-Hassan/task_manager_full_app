import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../widgets/screen_background.dart';

class ForgotPasswordEmailScreen extends StatefulWidget {
  const ForgotPasswordEmailScreen({super.key});
  static const String name = '/ForgotPasswordEmailScreen';

  @override
  State<ForgotPasswordEmailScreen> createState() =>
      _ForgotPasswordEmailScreenState();
}

class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen> {
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
                "Your Email address",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8,),
              Text(
                "A 6 digits verification OTP will be sent to your email address",
                style: Theme.of(
                  context,
                ).textTheme.labelMedium,
              ),
              SizedBox(height: 8),

              TextFormField(decoration: InputDecoration(hintText: "Email")),

              SizedBox(height: 8),
              FilledButton(
                onPressed: _onTapSubmitButton,
                child: Icon(Icons.arrow_circle_right_outlined),
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
  void _onTapSubmitButton(){}
  void _onTapSignInButton(){
    Navigator.pop(context);
  }


}
