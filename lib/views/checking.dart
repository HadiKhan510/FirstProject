import 'package:flutter/material.dart';

class StackUI extends StatelessWidget {
  const StackUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: MediaQuery.of(context).size.width * 0.15,
            top: MediaQuery.of(context).size.height * 0.25,
            child: Card(
              elevation: 20,
              shadowColor: Colors.black,
              color: Colors.amber,
              child: Container(
                height: 300,
                width: 300,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.height * 0.24,
            child: Card(
              elevation: 20,
              shadowColor: Colors.black,
              color: Colors.red,
              child: Container(
                height: 250,
                width: 250,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.3,
            top: MediaQuery.of(context).size.height * 0.2,
            child: Card(
              elevation: 20,
              shadowColor: Colors.black,
              color: Colors.blue,
              child: Container(
                height: 200,
                width: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
