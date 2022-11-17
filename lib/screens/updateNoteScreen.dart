import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_second_project/widgets/achievementsWidgets/oneAchievement.dart';
import 'package:gsg_second_project/widgets/addNoteScreenWidgets/topOfAddNoteScreen.dart';
import 'package:gsg_second_project/widgets/allAchievementsWidget/topOfAllAchievements.dart';
import 'package:gsg_second_project/widgets/deleteNoteScreenWidgets/topfDeleteNoteScreen.dart';
import 'package:gsg_second_project/widgets/updateNoteScreenWidgets/oneOfUpdatedNotes.dart';
import 'package:gsg_second_project/widgets/updateNoteScreenWidgets/updateForm.dart';

import '../widgets/allAchievementsWidget/oneOfAllAchievements.dart';
import '../widgets/updateNoteScreenWidgets/topOfUpdateNoteScreen.dart';

class UpdateNoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    int index = 1;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopOfUpdateNoteScreen(),
            Container(
              height: h * 6 / 7,
              width: w,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    UpdateForm(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
