import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Done extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 15, 100, 50),
        child: Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.done_rounded,
            size: 150,
            color: Colors.grey.shade900,
          ),
        ),
      ),
    );
  }
}
