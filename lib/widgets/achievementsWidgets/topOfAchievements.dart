import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_second_project/screens/mainScreen.dart';

class TopofAchievements extends StatelessWidget {
  const TopofAchievements({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 8,
      width: width,
      padding: EdgeInsets.all(width / 16),
      color: const Color.fromARGB(255, 15, 100, 50),
      child: Row(
        children: [
          FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 12, 102, 15),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreen(),
                ),
              );
            },
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'الإنجازات',
                  style: TextStyle(
                    fontSize: 24,
                    decoration: TextDecoration.none,
                    color: Colors.grey.shade400,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/images/badge2.png',
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
