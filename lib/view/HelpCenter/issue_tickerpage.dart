import 'package:elance_app/view/components/text_widget.dart';
import 'package:flutter/material.dart';

class IssueTicketPage extends StatelessWidget {
  const IssueTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "Issue Ticket",
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
                    "Please fill the details and generate ticket",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  textFieldWidget("Your Name"),
                  SizedBox(
                    height: 15,
                  ),
                  textFieldWidget("Email or Mobile Number"),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 128,
                    child: TextFormField(
                      // Adjust the font size
                      decoration: InputDecoration(
                        hintText: "Tell us about the issue",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(208, 208, 208, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 5, // Set the number of lines you want
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Center(
                          child: Text(
                        "Generate Ticket",
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
                ],
              ))),
    );
  }

  Widget textFieldWidget(
    String hintText,
  ) {
    return Container(
      height: 53,
      child: TextFormField(
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Color.fromRGBO(208, 208, 208, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(221, 221, 221, 1))))),
    );
  }
}
