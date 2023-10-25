import 'package:elance_app/view/OTP-Login/student_details.dart';
import 'package:elance_app/view/components/main_button.dart';
import 'package:elance_app/view/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultpintheme = PinTheme(
      width: 60,
      height: 56,
      textStyle: const TextStyle(fontSize: 22, color: Colors.black),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromRGBO(101, 166, 236, 1))),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Verify OTP",
            style: TextWidget.textStyle1,
          ),
          SizedBox(
            height: 10,
          ),
          Text("We’ll send an OTP on +91 98459 25689",
              style: TextWidget.textStyle2),
          SizedBox(
            height: 20,
          ),
          Pinput(
            length: 6,
            defaultPinTheme: defaultpintheme,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Resend OTP in 60s",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(7, 42, 79, 1)),
          )
        ]),
      )),
      bottomSheet: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        height: 100,
        child: Column(children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: "Facing any issue with OTP Login?",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Click here",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(12, 84, 160, 1)),
                    )
                  ]),
            ),
          ),
          MainButton(
            name: "Verify OTP",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentDetailsPage(),
                  ));
            },
          )
        ]),
      ),
    );
  }
}
