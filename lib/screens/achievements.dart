import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_second_project/widgets/achievementsWidgets/oneAchievement.dart';
import 'package:gsg_second_project/widgets/achievementsWidgets/topOfAchievements.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const TopofAchievements(),
        Container(
          height: h * 7 / 8,
          width: w,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                OneAchievement(),
                OneAchievement(),
                OneAchievement(),
                OneAchievement(),
                OneAchievement(),
                OneAchievement(),
                OneAchievement(),
                OneAchievement(),
                OneAchievement(),
                OneAchievement(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
