import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_second_project/enums_lists_maps/numOfVerses.dart';
import 'package:gsg_second_project/widgets/achievementsWidgets/oneAchievement.dart';
import 'package:gsg_second_project/widgets/addNoteScreenWidgets/addNoteForm.dart';
import 'package:gsg_second_project/widgets/addNoteScreenWidgets/topOfAddNoteScreen.dart';
import 'package:gsg_second_project/widgets/allAchievementsWidget/topOfAllAchievements.dart';

import '../widgets/allAchievementsWidget/oneOfAllAchievements.dart';
import 'package:quran/quran.dart' as quran;

class AddNoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    int index = 1;
    String name = quran.getSurahNameArabic(1);
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopOfAddNoteScreen(),
            const SizedBox(height: 25),
            Text(
              'سورة $name',
              style: TextStyle(
                  fontSize: 18,
                  decoration: TextDecoration.none,
                  color: Colors.grey.shade500),
            ),
            AddNoteForm(),
          ],
        ),
      ),
    );
  }
}
