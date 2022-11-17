import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsg_second_project/screens/oneNoteScreen.dart';

class OneAchievement extends StatelessWidget {
  const OneAchievement({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 8,
      width: width * 7 / 8,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 18, 18, 18),
          borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.all(20),
      margin: const EdgeInsets.all(7),
      child: Row(
        children: [
          const Text(
            'hello',
            style: TextStyle(
              color: Color.fromARGB(255, 130, 44, 44),
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OneNoteScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'قل اعوذ برب الناس',
                    style: GoogleFonts.tajawal(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 59, 133, 59),
                        fontSize: 14,
                        letterSpacing: .5,
                      ),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Colors.grey.shade500,
                    ),
                    color: const Color.fromARGB(255, 59, 133, 59),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'م',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.2,
                      color: Colors.grey.shade500,
                    ),
                    color: Colors.brown.shade800,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.none,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
