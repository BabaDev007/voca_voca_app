import 'package:flutter/material.dart';
import 'package:voca_voca_app/constants/theme.dart';
import 'package:voca_voca_app/screens/home_screen.dart';
import 'package:voca_voca_app/screens/page_view_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Voca voca',
      theme: constLightTheme,
      home: PageViewScreen(),
    );
  }
}

