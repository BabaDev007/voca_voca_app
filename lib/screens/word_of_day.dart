import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voca_voca_app/utils/widgets.dart';

import '../constants/theme.dart';

class WordOfDay extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Word of Day", style: GoogleFonts.alatsi( fontSize: 25)),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
          itemBuilder: (context, index){
        return wordOfDayListTile(context, "The book", "The word 'antepast' comes from Latin roots meaning 'before' and 'pasture, food'.", "14.05.2023");
      }, separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10,);
      }, itemCount: 20,)

    );
  }
}
