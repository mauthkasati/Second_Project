import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_second_project/screens/achievements.dart';
import 'package:gsg_second_project/widgets/mainScreenWidgets/oneSmallIcon.dart';

class TopOfMainScreen extends StatelessWidget {
  const TopOfMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 6 / 32,
      width: w,
      padding: EdgeInsets.all(w / 20),
      color: Colors.grey.shade900,
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: GestureDetector(
              child: Image.asset('assets/images/badge.png'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Achievements(),
                  ),
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'غريب',
                style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.none,
                  color: Colors.green.shade500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OneSmallIcon(Icons.key, '3', Colors.blue),
                  const SizedBox(width: 7),
                  OneSmallIcon(Icons.favorite, '2', Colors.red),
                  const SizedBox(width: 7),
                  OneSmallIcon(Icons.bolt, '1', Colors.yellow),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 14,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(7),
                        topLeft: Radius.circular(7),
                      ),
                      color: Colors.grey.shade800,
                    ),
                  ),
                  Container(
                    height: 14,
                    width: 105,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(7),
                        topRight: Radius.circular(7),
                      ),
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(width: 10),
          Container(
            //******************** */
            height: 66,
            width: 66,
            decoration: BoxDecoration(
                color: Colors.green,
                //************************
                borderRadius: BorderRadius.circular(33)
                //more than 50% of width makes circle
                ),
            child: const Center(
              child: Text(
                'م',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
