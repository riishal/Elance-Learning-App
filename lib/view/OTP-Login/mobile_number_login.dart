import 'package:elance_app/view/OTP-Login/email_login.dart';
import 'package:elance_app/view/OTP-Login/otp_screen.dart';
import 'package:elance_app/view/components/main_button.dart';
import 'package:elance_app/view/components/text_widget.dart';
import 'package:flutter/material.dart';

class MobileNumberLoginpage extends StatefulWidget {
  const MobileNumberLoginpage({super.key});

  @override
  State<MobileNumberLoginpage> createState() => _MobileNumberLoginpageState();
}

class _MobileNumberLoginpageState extends State<MobileNumberLoginpage> {
  String? selectedItem;
  final images = [
    'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1280px-Flag_of_India.svg.png',
    'https://img.freepik.com/premium-vector/united-states-america-flag_183326-49.jpg',
    'https://i.guim.co.uk/img/media/4e2060079efbcf4255faa90d5d25c41d7933356a/0_0_5000_3333/master/5000.jpg?width=620&quality=85&auto=format&fit=max&s=8f4650d41922eaad357a40049fcc71cf',
    'https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/800px-Flag_of_Brazil.svg.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Enter your mobile number",
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
                maxLines: 1,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    prefixIcon: SizedBox(
                      width: 110,
                      child: DropdownButtonFormField(
                        icon: Row(
                          children: [
                            Text("+91"),
                            Icon(Icons.keyboard_arrow_down),
                            VerticalDivider(
                              indent: 0,
                              endIndent: 0,
                              color: Color.fromRGBO(7, 42, 79, 1),
                            ),
                          ],
                        ),
                        hint: CircleAvatar(
                          backgroundImage: NetworkImage(
                            images[0],
                          ),
                        ),
                        value: selectedItem,
                        items: images.map((item) {
                          return DropdownMenuItem(
                              value: item,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(item),
                              ));
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value;
                          });
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(208, 208, 208, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(221, 221, 221, 1))))),
          ),
        ]),
      )),
      bottomSheet: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        height: 110,
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmailLoginPage(),
                  ));
            },
            child: Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextWidget(
                  text: "Login with Email",
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
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OTPScreen(),
                  ));
            },
          )
        ]),
      ),
    );
  }
}
