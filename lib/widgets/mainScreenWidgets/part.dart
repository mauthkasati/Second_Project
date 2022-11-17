import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

// ignore: must_be_immutable
class Part extends StatelessWidget {
  int numOfSurah = 0;
  int numOfAchievements = 0;
  int numOfAllAchivements = 0;

  Part(int nos, int noa, int noaa, {super.key}) {
    numOfSurah = nos;
    numOfAchievements = noa;
    numOfAllAchivements = noaa;
  }
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: w * 17 / 20,
        height: h * 7 / 31,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 14, 94, 34),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'سورة',
                  style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    color: Colors.grey.shade400,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 18, 18, 18),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      numOfSurah.toString(),
                      style: TextStyle(
                        fontSize: 11,
                        decoration: TextDecoration.none,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    numOfAchievements.toString(),
                    style: TextStyle(
                      fontSize: 40,
                      decoration: TextDecoration.none,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    quran.getSurahNameArabic(numOfSurah),
                    style: TextStyle(
                      fontSize: 40,
                      decoration: TextDecoration.none,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'نسبة الانجاز',
              style: TextStyle(
                fontSize: 13,
                decoration: TextDecoration.none,
                color: Colors.grey.shade400,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$numOfAllAchivements\\$numOfAchievements',
                  style: TextStyle(
                    fontSize: 13,
                    decoration: TextDecoration.none,
                    color: Colors.grey.shade400,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  height: 13,
                  width: w * 9.5 / 30,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                    ),
                    color: Color.fromARGB(255, 18, 18, 18),
                  ),
                ),
                Container(
                  height: 13,
                  width: w * 9.5 / 30,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                    color: Colors.brown.shade900,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
