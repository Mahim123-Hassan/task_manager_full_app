import 'package:flutter/material.dart';

import 'ui/screens/add_new_task_screen.dart';
import 'ui/screens/forgot_password_email_screen.dart';
import 'ui/screens/forgot_password_verify_otp_screen.dart';
import 'ui/screens/main_bottom_nav_holder_screen.dart';
import 'ui/screens/reset_password_screen.dart';
import 'ui/screens/sign_in_screen.dart';
import 'ui/screens/sign_up_screen.dart';
import 'ui/screens/splash_screen.dart';
import 'ui/screens/update_profile.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            fixedSize: Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          labelMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ),
      //home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        SplashScreen.name: (_) => SplashScreen(),
        SignInScreen.name: (_) => SignInScreen(),
        SignUpScreen.name: (_) => SignUpScreen(),
        ForgotPasswordEmailScreen.name: (_) => ForgotPasswordEmailScreen(),
        ForgotPasswordVerifyOtpScreen.name: (_) =>
            ForgotPasswordVerifyOtpScreen(),
        ResetPasswordScreen.name: (_) => ResetPasswordScreen(),
        MainBottomNavHolderScreen.name: (_) => MainBottomNavHolderScreen(),
        AddNewTaskScreen.name: (_) => AddNewTaskScreen(),
        UpdateProfile.name: (_) => UpdateProfile(),
      },
      initialRoute: SplashScreen.name,
    );
  }
}
