import 'package:elance_app/view/Homepage.dart';
import 'package:elance_app/view/components/main_button.dart';
import 'package:elance_app/view/components/text_widget.dart';
import 'package:elance_app/view/onboarding_page.dart';
import 'package:elance_app/view/splash_screen.dart';
import 'package:flutter/material.dart';

enum Options {
  login,
  rice,
}

class ChooseOptionPage extends StatefulWidget {
  const ChooseOptionPage({super.key});

  @override
  State<ChooseOptionPage> createState() => _ChooseOptionPageState();
}

class _ChooseOptionPageState extends State<ChooseOptionPage> {
  Options selectedOption = Options.login;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Choose an Option",
            style: TextWidget.textStyle1,
          ),
          SizedBox(
            height: 10,
          ),
          Text("Select an option to continue", style: TextWidget.textStyle2),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              child: Row(children: [
                Radio<Options>(
                  activeColor: const Color.fromRGBO(12, 84, 160, 1),
                  fillColor: MaterialStateProperty.all(
                      const Color.fromRGBO(12, 84, 160, 1)),
                  value: Options.login,
                  groupValue: selectedOption,
                  onChanged: (Options? value) {
                    setState(() {
                      print('value: $value');
                      selectedOption = value!;
                    });
                  },
                ),
                TextWidget(
                  text: "Login with password",
                )
              ]),
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: selectedOption == Options.login
                          ? Color.fromRGBO(101, 166, 236, 1)
                          : Color.fromRGBO(218, 217, 219, 1)),
                  borderRadius: BorderRadius.circular(4),
                  color: selectedOption == Options.login
                      ? Color.fromRGBO(228, 241, 255, 1)
                      : Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
            child: Padding(padding: EdgeInsets.only()),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedOption == Options.rice;
              });
            },
            child: Container(
              child: Row(children: [
                Radio<Options>(
                  activeColor: const Color.fromRGBO(12, 84, 160, 1),
                  fillColor: MaterialStateProperty.all(
                      const Color.fromRGBO(12, 84, 160, 1)),
                  value: Options.rice,
                  groupValue: selectedOption,
                  onChanged: (Options? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                ),
                TextWidget(
                  text: "Login with password",
                )
              ]),
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: selectedOption == Options.rice
                          ? Color.fromRGBO(101, 166, 236, 1)
                          : Color.fromRGBO(218, 217, 219, 1)),
                  borderRadius: BorderRadius.circular(4),
                  color: selectedOption == Options.rice
                      ? Color.fromRGBO(228, 241, 255, 1)
                      : Colors.white),
            ),
          ),
        ]),
      )),
      bottomSheet: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        height: 80,
        child: MainButton(
          name: "Continue",
          onTap: () {
            if (selectedOption == Options.login) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Homepage(),
                  ));
            } else if (selectedOption == Options.rice) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnboardPage(),
                  ));
            }
          },
        ),
      ),
    );
  }
}
