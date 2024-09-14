import 'package:clean_code/const/images_path.dart';
import 'package:clean_code/const/my_app_colors.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/custom_listTile.dart';
import 'Stack_widget.dart';
import 'checking.dart';

class Listtile extends StatelessWidget {
  const Listtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 200,
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width * 1, 1),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'WhatsApp',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.green),
                ),
                SizedBox(
                  width: 140,
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  size: 25,
                ),
                Icon(
                  Icons.more_vert_outlined,
                  size: 25,
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 45,
              width: 375,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.search_outlined),
                  Text(
                    'Search',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.archive_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Archived',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomListTile(imagePath: sword,name: 'Hadi',subTitle: 'k pe karna',tileColor: bgColor,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StackPractice()));
            },),
            CustomListTile(imagePath: batman,name: 'Hana',subTitle: 'hi',tileColor: primaryButtonColor,roundedBorder: 20,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StackUI()));
            },),
          ],
        ),
      ),
    );
  }
}
