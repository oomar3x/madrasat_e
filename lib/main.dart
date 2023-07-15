import 'package:flutter/material.dart';
//import 'package:madrasat_e_project/parent_sign_in_page.dart';
//import 'package:madrasat_e_project/student_sign_in_page.dart';
//import 'package:madrasat_e_project/sign_in_page.dart';
//import 'package:madrasat_e_project/student_sign_up_page4.dart';
//import 'package:madrasat_e_project/student_sign_up_page.dart';
//import 'package:madrasat_e_project/student_sign_up_page2.dart';
//import 'package:madrasat_e_project/student_sign_up_page3.dart';
//import 'package:madrasat_e_project/parent_sign_up_page.dart';
//import 'package:madrasat_e_project/parent_sign_up_page2.dart';
import 'package:madrasat_e_project/sign_up_page.dart';
//import 'landing_page.dart';
//import 'loading_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Madrasat project',
      home: Scaffold(
        body: SignUpPage(),
      ),
    );
  }
}
