
 import 'dart:math';

import 'package:google_fonts/google_fonts.dart';
 import 'package:flutter/material.dart';
import 'package:voca_voca_app/screens/word_of_day_slider.dart';

import '../screens/word_of_day.dart';

Widget detailHomeScreenContainer(BuildContext conetxt){
 return  Padding(
   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
   child: Container(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         Row(
           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("15", style: GoogleFonts.alatsi(fontSize: 30, color: Colors.white),),
                 Text("Topics", style: TextStyle(color: Colors.white),),
               ],
             ),
             SizedBox(child: VerticalDivider(), height: 40,),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("10", style: GoogleFonts.alatsi(fontSize: 30, color: Colors.white),),
                 Text("Reviewing", style: TextStyle(color: Colors.white),),
               ],
             ),
             SizedBox(child: VerticalDivider(), height: 40,),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("141", style: GoogleFonts.alatsi(fontSize: 30, color: Colors.white),),
                 Text("Learning", style: TextStyle(color: Colors.white), ),
               ],
             ),
           ],
         ),
         TextButton(onPressed: (){}, child: Text("View Details", style: GoogleFonts.alatsi(fontSize: 20, color: Colors.white60),))
       ],
     ),
     height: 140,
     decoration: BoxDecoration(
         boxShadow: [BoxShadow(color: Colors.white, blurRadius: 20, blurStyle: BlurStyle.inner)],
         color: Colors.teal,
         borderRadius: BorderRadius.circular(20)
     ),
   ),
 );

}



Widget wordOfDayContainer(BuildContext context){
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("The book", style: GoogleFonts.alatsi(fontSize: 30),),
          Text("A foretaste; something taken before a meal to stimulate the appetite.", textAlign: TextAlign.center, style: TextStyle(fontSize: 17),),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton.filledTonal(onPressed: (){}, icon: Icon(Icons.ios_share_rounded)),
              IconButton.filledTonal(onPressed: (){}, icon: Icon(Icons.speaker_rounded)),
              IconButton.filledTonal(
                  onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WordOfDay()));},
                  icon: Icon(Icons.chevron_right)),

            ],
          )
        ],
      ),
      width: double.maxFinite,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.white, blurRadius: 20, blurStyle: BlurStyle.inner)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
    ),
  );
}


Widget headerWidget(){
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text("The Word of Day ", style: GoogleFonts.alatsi(fontSize: 25),),
  );
}


Widget homeScreenSliderWidget(BuildContext context){
  return      Padding(
    padding: EdgeInsets.only(top: 20, bottom: 10),
    child: SizedBox(
      height: 180,
      child: ListView(
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        children: [

          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/target.png", height: 50,),
                  SizedBox(height: 20,),
                  Text("Daily Goal", style: GoogleFonts.alata(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 5,),
                  Text("50 words/day", style: GoogleFonts.alata(color: Colors.white60, fontSize: 13),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: LinearProgressIndicator(value: .4, color: Colors.green, backgroundColor: Colors.black12, minHeight: 8,),
                  )
                ],

              ),
              height: 150,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/time.png", height: 60,),
                  SizedBox(height: 20,),
                  Text("Speed Up", style: GoogleFonts.alata(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 5,),
                  Text("450 words/day", style: GoogleFonts.alata(color: Colors.white60, fontSize: 13),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: LinearProgressIndicator(value: .4, color: Colors.white, backgroundColor: Colors.black12, minHeight: 8,),
                  )
                ],

              ),
              height: 150,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/target.png", height: 50,),
                  SizedBox(height: 20,),
                  Text("Daily Goal", style: GoogleFonts.alata(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 5,),
                  Text("50 words/day", style: GoogleFonts.alata(color: Colors.white60, fontSize: 13),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: LinearProgressIndicator(value: .4, color: Colors.green, backgroundColor: Colors.black12, minHeight: 8,),
                  )
                ],

              ),
              height: 150,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),


        ],
      ),
    ),
  );
}



Widget wordOfDayListTile(BuildContext context, String title, String subtitle, String date){
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),Random().nextInt(255), .85,)
    ),
    child: ListTile(
      onTap: (){
      },
      title: Text("The book", style: GoogleFonts.alatsi(),),
      subtitle: Text(
        "The word 'antepast' comes from Latin roots meaning 'before' and 'pasture, food'.",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.aleo(),),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("14.05.2023", style: GoogleFonts.alatsi(),),
        ],
      ),
    ),
  );
}



