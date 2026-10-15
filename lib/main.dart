import 'package:flutter/material.dart';
import 'package:flutter_batch_02_assignment/view/student_protal_home_view/student_protal_home_screen/student_home_screen.dart';
import 'package:flutter_batch_02_assignment/view/student_protal_home_view/student_protal_home_widget/student_home_header_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: StudentHomeScreen(),


    );
  }
}

