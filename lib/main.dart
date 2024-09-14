import 'package:clean_code/views/Stack_widget.dart';
import 'package:clean_code/views/checking.dart';
import 'package:clean_code/views/listtile.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false
      ),
      title: 'Flutter Demo',
      home: const Listtile(),
    );
  }
}

