import 'package:flutter/material.dart';

class FinancialCard extends StatelessWidget {
  const FinancialCard({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 147,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/image/container2.png")),
                  color: color,
                  borderRadius: BorderRadius.circular(9)),
              child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "ACCA Financial\nReporting",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color.fromRGBO(7, 42, 79, 1)),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "by Gopika M, ACCA\nStarts Tomorrow at 10:30 AM",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Color.fromRGBO(7, 42, 79, 1)),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Row(
                          children: [
                            Text(
                              "Set Reminder",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: Color.fromRGBO(12, 84, 160, 1)),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            CircleAvatar(
                                backgroundColor: Color.fromRGBO(12, 84, 160, 1),
                                radius: 8,
                                child: Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: Colors.white,
                                  size: 15,
                                )),
                          ],
                        ),
                      ]))),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/image/Background 1.png",
              scale: 1,
            ))
      ]),
    );
  }
}
