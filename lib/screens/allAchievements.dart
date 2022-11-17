import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_second_project/widgets/achievementsWidgets/oneAchievement.dart';
import 'package:gsg_second_project/widgets/allAchievementsWidget/topOfAllAchievements.dart';

import '../widgets/allAchievementsWidget/oneOfAllAchievements.dart';

class AllAchievements extends StatelessWidget {
  const AllAchievements({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopOfAllAchievements(),
            Container(
              height: h * 6 / 7,
              width: w,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    OneOfAllAchievement(),
                    OneOfAllAchievement(),
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
