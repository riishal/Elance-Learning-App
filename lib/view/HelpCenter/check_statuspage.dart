import 'package:elance_app/view/components/text_widget.dart';
import 'package:flutter/material.dart';

class CheckStatusPage extends StatefulWidget {
  const CheckStatusPage({super.key});

  @override
  State<CheckStatusPage> createState() => _CheckStatusPageState();
}

class _CheckStatusPageState extends State<CheckStatusPage> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "Check Status",
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
          child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter your ticket number",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 53,
                    child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: "Ticket Number",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(208, 208, 208, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(221, 221, 221, 1))))),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        setVisibility();
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Center(
                          child: Text(
                        "Check Status",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(12, 84, 160, 1),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 4,
                                color: Color.fromRGBO(7, 42, 79, 0.05)),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: Visibility(
                        visible: visibility,
                        child: Container(
                          width: double.infinity,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(25, 175, 85, 0.23),
                                  radius: 45,
                                  child: Icon(
                                    Icons.done_rounded,
                                    weight: 30,
                                    size: 40,
                                    color: Color.fromRGBO(32, 164, 45, 1),
                                  ),
                                ),
                                SizedBox(
                                  height: 17,
                                ),
                                TextWidget(text: "Your Ticket is approved"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Our Executive will call or text you",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "with in 1 Hour",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ]),
                        )),
                  )
                ],
              ))),
    );
  }

  setVisibility() {
    visibility = !visibility;
  }
}
