import 'package:flutter/material.dart';

import '../../widgets/tm_app_bar.dart';

class MainBottomNavHolderScreen extends StatefulWidget {
  const MainBottomNavHolderScreen({super.key});
  static const String name = "/MainBottomNavHolderScreen";

  @override
  State<MainBottomNavHolderScreen> createState() =>
      _MainBottomNavHolderScreenState();
}

class _MainBottomNavHolderScreenState extends State<MainBottomNavHolderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: TMAppBar(), body: Column());
  }
}


