import 'package:clean_code/const/images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPractice extends StatelessWidget {
  const StackPractice({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 1,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(batman), fit: BoxFit.cover),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leadingWidth: 100,
          leading: CircleAvatar(
            backgroundImage: AssetImage(batman),
          ),
          bottom: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width * 1, 30),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('one'),
                    Text('one'),
                    Text('one'),
                  ],
                ),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                dense: true,
                splashColor: Colors.deepOrange,
                focusColor: Colors.orange,
                onTap: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: Text('name'),
                subtitle: Text('name'),
                leading: CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.abc,
                      size: 40,
                    ),
                    Icon(Icons.abc),
                  ],
                ),
                tileColor: Colors.purpleAccent,
              ),
              ListTile(
                title: Text('name'),
                tileColor: Colors.greenAccent,
                splashColor: Colors.blue,
                focusColor: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                onTap: () {},
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.add),
                    Icon(Icons.beach_access),
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(batman),
                ),
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'User Name',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '9:10 Pm',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'last message hhyiuigiugiujfbjfbkjewbfkjewbfjewbfkbefkbekfbk',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                        softWrap: true,
                          overflow:TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_off_outlined,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.push_pin_outlined,
                            color: Colors.white,
                          ),
                          Container(
                              padding: EdgeInsets.all(8),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.lightGreenAccent),
                              child: Text(
                                '2',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(batman),
                ),
                splashColor: Colors.cyanAccent,
                focusColor: Colors.amberAccent,
                onTap: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                tileColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
