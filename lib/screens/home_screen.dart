import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voca_voca_app/constants/theme.dart';
import 'package:voca_voca_app/screens/word_of_day.dart';

import '../utils/widgets.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Voca Voca", style: GoogleFonts.alatsi(color: constLightTheme.errorColor, fontSize: 30)),
        actions: [
          Badge(
            alignment: Alignment.topCenter,
            child: ElevatedButton(onPressed: (){}, child: Icon(Icons.notification_add),
                style: ElevatedButton.styleFrom(shape: CircleBorder(), elevation: 0), ),
          ),
          CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/200/300"),),
          SizedBox(width: 15,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            homeScreenSliderWidget(context),
            headerWidget(),
            wordOfDayContainer(context),
            detailHomeScreenContainer(context),
            detailHomeScreenContainer(context),


          ],
        ),
      )

    );
  }
}
