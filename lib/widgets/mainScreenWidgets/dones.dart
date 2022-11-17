import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 16 / 20,
      height: h / 8,
      padding: EdgeInsets.all(w / 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 18, 18, 18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 13,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey.shade800,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '5',
                  style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.none,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 7),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'الانجازات',
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                  color: Colors.grey.shade500,
                ),
              ),
              Text(
                'استمر بالمزيد من الانجازات',
                style: TextStyle(
                  fontSize: 11,
                  decoration: TextDecoration.none,
                  color: Colors.grey.shade500,
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 13,
                    width: w / 4.2,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(7),
                        topLeft: Radius.circular(7),
                      ),
                      color: Colors.grey.shade800,
                    ),
                  ),
                  Container(
                    height: 13,
                    width: w / 4.2,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(7),
                        topRight: Radius.circular(7),
                      ),
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 10),
          Image.asset('assets/images/doneImage.png'),
        ],
      ),
    );
  }
}
