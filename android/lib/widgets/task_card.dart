import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class taskcard extends StatelessWidget {
  const taskcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: ListTile(
        tileColor: Colors.white,
        title: Text("Title of task"),
        subtitle: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "Description of the task",
              style: TextStyle(color: Colors.grey),
            ),
            Text("Date: 10 March 2026"),

            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    "New",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Spacer(),
                Icon(Icons.delete, color: Colors.red),
                SizedBox(width: 20),
                Icon(Icons.edit),
              ],
            ),
          ],
        ),
      ),
    );
  }
}