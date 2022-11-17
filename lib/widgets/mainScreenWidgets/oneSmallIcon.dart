import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OneSmallIcon extends StatelessWidget {
  IconData? iconData;
  String text = '';
  Color? c;
  OneSmallIcon(IconData i, String t, Color s, {super.key}) {
    iconData = i;
    text = t;
    c = s;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              iconData,
              size: 18,
              color: c,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 8,
              color: c,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
