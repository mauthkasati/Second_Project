import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_second_project/screens/done.dart';
import 'package:gsg_second_project/screens/mainScreen.dart';

class TopOfDeleteNoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(15),
      width: w,
      height: h / 7,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 95, 60, 8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainScreen(),
                  ),
                );
              },
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey.shade200,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "احذف ملاحظاتك",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 28,
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
