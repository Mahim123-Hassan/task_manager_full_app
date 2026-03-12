import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class photo_picker extends StatelessWidget {
  const photo_picker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        children: [
          Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                )
            ),
            alignment: .center,
            child: Text("Photo"),
          ),
          SizedBox(width: 10,),
          Expanded(child: Text("Select Photo"))
        ],
      ),

    );
  }
}