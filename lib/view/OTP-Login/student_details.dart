import 'package:elance_app/view/Homepage.dart';
import 'package:elance_app/view/components/main_button.dart';
import 'package:elance_app/view/components/text_widget.dart';
import 'package:flutter/material.dart';

class StudentDetailsPage extends StatelessWidget {
  const StudentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Your Details",
            style: TextWidget.textStyle1,
          ),
          SizedBox(
            height: 10,
          ),
          Text("Enter your personal details", style: TextWidget.textStyle2),
          SizedBox(
            height: 20,
          ),
          textFieldWidget("Your Name"),
          SizedBox(
            height: 10,
          ),
          textFieldWidget("Your Email ID"),
          SizedBox(
            height: 10,
          ),
          textFieldWidget("Referal Code"),
        ]),
      )),
      bottomSheet: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        height: 80,
        child: MainButton(
          name: "Continue",
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Homepage(),
                ));
          },
        ),
      ),
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
