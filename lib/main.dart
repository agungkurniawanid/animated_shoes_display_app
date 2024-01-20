import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stack_align/appbar.dart';
import 'package:stack_align/bottomnav.dart';
import 'package:stack_align/screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFFFFFFFF),
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar(),
        body: MyScreen(),
        bottomNavigationBar: MyBottomNav(),
      ),
    );
  }
}
