import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_second_project/enums_lists_maps/categories.dart';
import 'package:quran/quran.dart' as quran;

class UpdateForm extends StatelessWidget {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(width: 10),
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
              SizedBox(width: w / 2.9),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  ' :  رقم الاية',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              SizedBox(width: w / 28),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.shade600,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                width: w / 4,
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
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.shade600,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                width: w / 4,
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
            ],
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              ' :  قبل التعديل',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: h / 5.8,
            width: w * 4 / 6,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey.shade600,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'النص السابق',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              ' :  بعد التعديل',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: h / 5.8,
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
              log(myController.text);
            },
            child: Icon(
              Icons.update,
              color: Colors.grey.shade500,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
