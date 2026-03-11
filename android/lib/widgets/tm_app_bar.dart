import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/screens/update_profile.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TMAppBar({super.key, this.fromUpdateProfile = false});
  final bool fromUpdateProfile;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AppBar(
      leading: null,
      backgroundColor: Colors.green,
      title: GestureDetector(
        onTap: (){
          if(fromUpdateProfile){
            return;

          }
          Navigator.pushNamed(context,UpdateProfile.name);
        },
        child: Row(
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
    );
  }

  @override

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}