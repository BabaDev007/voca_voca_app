import 'package:flutter/material.dart';

 var constLightTheme = ThemeData(
  buttonTheme: ButtonThemeData(
   buttonColor: Colors.white,
   colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)
  ),
   appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
    ),
       backgroundColor: Colors.transparent,
       elevation: 0,
       shadowColor: Colors.transparent),
   colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent.shade700),
   useMaterial3: true,
   scaffoldBackgroundColor: Colors.white.withOpacity(.9),
   errorColor: Colors.indigo


 );