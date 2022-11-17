import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_second_project/enums_lists_maps/categories.dart';
import 'package:gsg_second_project/screens/deleteNoteScreen.dart';
import 'package:gsg_second_project/screens/updateNoteScreen.dart';
import 'package:quran/quran.dart' as quran;

class BodyOfOneNoteScreen extends StatelessWidget {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    String dropdownValue = categoriesList.first;
    return Container(
      padding: const EdgeInsets.all(20),
      height: h * 5 / 7,
      width: w * 5 / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 18, 18, 18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: h / 16,
            width: w / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color.fromARGB(255, 15, 100, 50),
              ),
            ),
            child: Center(
              child: Text(
                'التصنيف : سبب نزول',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
          SizedBox(height: h / 70),
          Container(
            height: h / 16,
            width: w / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color.fromARGB(255, 15, 100, 50),
              ),
            ),
            child: Center(
              child: Text(
                'رقم الاية : 200',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' : الملاحظة',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              SizedBox(
                width: w / 20,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: h / 3,
            width: w * 4 / 6,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: const Color.fromARGB(255, 15, 100, 50),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Text(
                'نص الملاحظة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 50,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 18, 18, 18),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UpdateNoteScreen(),
                    ),
                  );
                },
                child: Icon(
                  Icons.update,
                  color: Colors.grey.shade500,
                  size: 35,
                ),
              ),
              SizedBox(width: w / 8),
              FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 18, 18, 18),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeleteNoteScreen(),
                    ),
                  );
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.grey.shade500,
                  size: 35,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
