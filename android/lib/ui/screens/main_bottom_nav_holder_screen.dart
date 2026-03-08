import 'package:flutter/material.dart';

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
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          spacing: 12,
          children: [
            CircleAvatar(),
            Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  "Mahim Hassan",
                  style: textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "hmahim951@gmail.come",
                  style: textTheme.bodyLarge?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(),
    );
  }
}
