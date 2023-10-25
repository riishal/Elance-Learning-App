import 'package:elance_app/view/components/text_widget.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "Notifications",
          style: TextWidget.textStyle1,
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
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Account Activated",
                            style: TextWidget.textStyle1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Hey Arjun, you have subscribed 9 subjects to your\ncourse",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "3 days ago",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          )
                        ]),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromRGBO(216, 235, 255, 1)),
                  height: 99,
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: 5),
      ))),
    );
  }
}
