import 'package:flutter/material.dart';

class AllCoursesPage extends StatelessWidget {
  const AllCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> helpNameList = [
      "Professional Courses",
      "estox",
      "Commerce Lab",
      "Elance Plus"
    ];

    List<Color> circleColor = [
      Color.fromRGBO(255, 249, 234, 1),
      Color.fromRGBO(234, 255, 235, 1),
      Color.fromRGBO(222, 238, 255, 1),
      Color.fromRGBO(243, 222, 255, 1)
    ];
    List<Color> imageColor = [
      Color.fromRGBO(237, 186, 55, 1),
      Color.fromRGBO(25, 167, 31, 1),
      Color.fromRGBO(37, 111, 190, 1),
      Color.fromRGBO(175, 66, 237, 1)
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "All Courses",
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
                      backgroundColor: circleColor[index],
                      child: Image.asset("assets/image/cap.png",
                          scale: 10, color: imageColor[index]),
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
                      boxShadow: [BoxShadow(color: Colors.grey)],
                      color: Colors.white,

                      // color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10)),
                  height: 70,
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
            itemCount: imageColor.length),
      ))),
    );
  }
}
