import 'package:elance_app/view/HelpCenter/check_statuspage.dart';
import 'package:elance_app/view/HelpCenter/f.a.q_page.dart';
import 'package:elance_app/view/HelpCenter/issue_tickerpage.dart';
import 'package:flutter/material.dart';

class HelpLinepage extends StatelessWidget {
  const HelpLinepage({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          listTileWidget(
              context,
              "Raise an issue Ticket",
              "assets/image/help-1.png",
              Color.fromRGBO(255, 249, 234, 1),
              () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IssueTicketPage(),
                  ))),
          listTileWidget(
              context,
              "Check Ticket Status",
              "assets/image/help2.png",
              Color.fromRGBO(234, 255, 235, 1),
              () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckStatusPage(),
                  ))),
          listTileWidget(
              context,
              "FAQ",
              "assets/image/help3.png",
              Color.fromRGBO(222, 238, 255, 1),
              () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FAQstatusPage(),
                  )))
        ]),
      )),
    );
  }

  Widget listTileWidget(BuildContext context, String name, String image,
      Color color, Function() onTap) {
    return Container(
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor: color,
          child: Image.asset(image),
        ),
        title: Text(
          name,
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
    );
  }
}
