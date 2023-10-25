import 'package:elance_app/view/menudrawer/all_courses_page.dart';
import 'package:elance_app/view/components/drawer_widget.dart';
import 'package:elance_app/view/components/text_widget.dart';
import 'package:elance_app/view/menudrawer/downloads_page.dart';
import 'package:elance_app/view/menudrawer/notifications.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
              height: 80,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromRGBO(216, 235, 255, 1),
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.black,
                    ),

                    // backgroundImage:
                    //     NetworkImage(widget.userModel.profilepic ?? ""),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromRGBO(7, 42, 79, 1)),
                      ),
                      Text(
                        "ACCA",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color.fromRGBO(7, 42, 79, 1)),
                      ),
                    ],
                  )
                ],
              )),
          DrawerWidget(
            leading: Image.asset("assets/image/cap.png", scale: 8),
            title: TextWidget(text: "Elance Courses"),
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllCoursesPage(),
                  ));
            },
          ),
          DrawerWidget(
            function: () {
              Navigator.pop(context);
            },
            leading: Icon(
              Icons.desktop_mac_rounded,
              color: Color.fromRGBO(7, 42, 79, 1),
            ),
            title: TextWidget(text: "Desktop Login"),
          ),
          DrawerWidget(
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ));
            },
            leading: Icon(
              Icons.notifications_none,
              color: Color.fromRGBO(7, 42, 79, 1),
            ),
            title: TextWidget(text: "Notifications"),
          ),
          DrawerWidget(
            function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DownloadsPage(),
                  ));
            },
            leading: Icon(
              Icons.file_download_outlined,
              color: Color.fromRGBO(7, 42, 79, 1),
            ),
            title: TextWidget(text: "Downloads"),
          ),
          DrawerWidget(
            function: () {
              Navigator.pop(context);
            },
            leading: Icon(
              Icons.share_outlined,
              color: Color.fromRGBO(7, 42, 79, 1),
            ),
            title: TextWidget(text: "Share the App"),
          ),
          DrawerWidget(
            function: () {
              Navigator.pop(context);
            },
            leading: Icon(
              Icons.info_outline,
              color: Color.fromRGBO(7, 42, 79, 1),
            ),
            title: TextWidget(text: "Learn More"),
          ),
          DrawerWidget(
            function: () {
              Navigator.pop(context);
            },
            leading: Icon(
              Icons.logout_rounded,
              color: Color.fromRGBO(7, 42, 79, 1),
            ),
            title: TextWidget(text: "Logout"),
          ),
        ],
      ),
    );
  }
}
