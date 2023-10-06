import 'package:flutter/material.dart';
import 'package:hometask_4/Message_page.dart';
import 'package:hometask_4/first_page.dart';
import 'package:hometask_4/second_page.dart';
import 'package:hometask_4/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ThirdPage()
    );
  }
}