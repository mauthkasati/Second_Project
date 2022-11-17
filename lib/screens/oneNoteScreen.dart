import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_second_project/widgets/oneNoteWidgets/bodyOfOneNoteScreen.dart';
import 'package:gsg_second_project/widgets/oneNoteWidgets/topOfOneNoteScreen.dart';

class OneNoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopOfOneNoteScreen(),
            Container(
              height: h * 6 / 7,
              width: w,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'ملاحظة رقم 1 على سورة الفاتحة',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 5),
                    BodyOfOneNoteScreen(),
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
