import 'package:clean_code/const/images_path.dart';
import 'package:clean_code/const/my_app_colors.dart';
import 'package:flutter/material.dart';


class Coding extends StatelessWidget {
  const Coding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(netflix)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage(batman)),
            ),
            Card(
              color: primaryButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
              child: Container(
                height: 200,
                width: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
