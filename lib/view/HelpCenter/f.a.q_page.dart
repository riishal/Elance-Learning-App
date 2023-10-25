import 'package:elance_app/view/components/text_widget.dart';
import 'package:flutter/material.dart';

int buttonIndex = -1;

class FAQstatusPage extends StatefulWidget {
  const FAQstatusPage({super.key});

  @override
  State<FAQstatusPage> createState() => _FAQstatusPageState();
}

class _FAQstatusPageState extends State<FAQstatusPage> {
  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(247, 245, 245, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(247, 245, 245, 1),
          title: Text(
            "FAQ",
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
            child: Expanded(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.separated(
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          buttonIndex = index;
                          setState(() {
                            setVisibility();
                            // if (buttonIndex == index) {
                            //   setVisibility();
                            // } else {
                            //   return null;
                            // }
                          });
                        },
                        child: Container(
                          child: ListTile(
                              title: TextWidget(
                                text:
                                    "What will be the duration between\nCMA Exams",
                              ),
                              trailing: buttonIndex == index
                                  ? Icon(Icons.keyboard_arrow_down,
                                      size: 40,
                                      color: Color.fromRGBO(7, 42, 79, 1))
                                  : Icon(Icons.arrow_forward_ios_rounded,
                                      color: Color.fromRGBO(7, 42, 79, 1))),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          height: 67,
                        ),
                      ),
                  separatorBuilder: (context, index) => buttonIndex == index
                      ? Visibility(
                          child: Container(
                              height: 60,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                    "Lorem ipsum dolor lorem ipsum dolor lorem\nipsum dolor"),
                              )))
                      : SizedBox(
                          height: 20,
                        ),
                  itemCount: 8)),
        )));
  }

  setVisibility() {
    visibility = !visibility;
  }
}
