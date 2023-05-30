import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WordOfDaySlider extends StatelessWidget {
  const WordOfDaySlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Word of Day", style: GoogleFonts.alatsi( fontSize: 25)),
      ),
    );
  }
}
