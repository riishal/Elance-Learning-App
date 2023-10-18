import 'package:flutter/material.dart';

class HelpLinepage extends StatelessWidget {
  const HelpLinepage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> helpNameList = [
      "Raise an issue Ticket",
      "Check Ticket Status",
      "FAQ"
    ];

    List<String> helpImage = [
      "assets/image/help-1.png",
      "assets/image/help2.png",
      "assets/image/help3.png"
    ];
    List<Color> colour = [
      Color.fromRGBO(255, 249, 234, 1),
      Color.fromRGBO(234, 255, 235, 1),
      Color.fromRGBO(222, 238, 255, 1),
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "Help Center",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 21,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
          child: Expanded(
              child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
            itemBuilder: (context, index) => Container(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colour[index],
                      child: Image.asset(helpImage[index]),
                    ),
                    title: Text(
                      helpNameList[index],
                      style: TextStyle(
                          color: Color.fromRGBO(7, 42, 79, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                      size: 21,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10)),
                  height: 70,
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
            itemCount: 3),
      ))),
    );
  }
}
