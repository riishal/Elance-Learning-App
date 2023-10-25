import 'package:elance_app/view/OTP-Login/mobile_number_login.dart';
import 'package:elance_app/view/components/main_button.dart';
import 'package:elance_app/view/components/text_widget.dart';
import 'package:flutter/material.dart';

class EmailLoginPage extends StatelessWidget {
  const EmailLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Enter your Email ID",
            style: TextWidget.textStyle1,
          ),
          SizedBox(
            height: 10,
          ),
          Text("We’ll send an OTP for verification",
              style: TextWidget.textStyle2),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 53,
            child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your Email ID",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(208, 208, 208, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(221, 221, 221, 1))))),
          )
        ]),
      )),
      bottomSheet: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        height: 110,
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MobileNumberLoginpage(),
                  ));
            },
            child: Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextWidget(
                  text: "Login with Mobile Number ",
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                )
              ]),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          MainButton(
            name: "Send OTP",
            onTap: () {},
          )
        ]),
      ),
    );
  }
}
