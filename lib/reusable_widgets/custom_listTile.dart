import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/images_path.dart';
import '../views/Stack_widget.dart';

class CustomListTile extends StatelessWidget {
  final String imagePath;
  final String name;
  final String subTitle;
  final Color tileColor;
  final double roundedBorder;
  final VoidCallback onTap;
  const CustomListTile(
      {required this.imagePath,
      required this.name,
      required this.subTitle,
      required this.tileColor,
         this.roundedBorder = 15,
        required this.onTap,
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: tileColor,
      splashColor: Colors.white10,
      focusColor: Colors.grey,
      onTap:onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(roundedBorder),
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 17),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('5:30'),
        ],
      ),
    );
  }
}
