import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_second_project/enums_lists_maps/categories.dart';
import 'package:gsg_second_project/screens/done.dart';
import 'package:quran/quran.dart' as quran;

class AddNoteForm extends StatelessWidget {
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
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              ' :  التصنيف',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey.shade600,
                ),
                borderRadius: BorderRadius.circular(10)),
            width: w / 3,
            height: 40,
            child: Align(
              alignment: Alignment.center,
              child: DropdownButton<String>(
                isExpanded: true,
                dropdownColor: Colors.grey.shade300,
                menuMaxHeight: 200,
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  size: 25,
                ),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
                onChanged: (String? value) {
                  dropdownValue = value!;
                  log(dropdownValue);
                },
                items: categoriesList.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Align(
                          alignment: Alignment.center, child: Text(value)),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              ' : رقم الآية',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey.shade600,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            width: w / 3,
            height: 40,
            child: Align(
              alignment: Alignment.center,
              child: DropdownButton<String>(
                isExpanded: true,
                dropdownColor: Colors.grey.shade300,
                menuMaxHeight: 200,
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  size: 25,
                ),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
                onChanged: (String? value) {
                  dropdownValue = value!;
                  log(dropdownValue);
                },
                items: categoriesList.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Align(
                          alignment: Alignment.center, child: Text(value)),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              ' : اكتب ملاحظتك',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: h / 3.5,
            width: w * 4 / 6,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey.shade600,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: myController,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
              minLines: 5,
              maxLines: 50,
            ),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 18, 18, 18),
            onPressed: () {
              AlertDialog(
                title: const Text('AlertDialog Title'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: const <Widget>[
                      Text('This is a demo alert dialog.'),
                      Text('Would you like to approve of this message?'),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Approve'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
            child: Icon(
              Icons.add,
              color: Colors.grey.shade500,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
