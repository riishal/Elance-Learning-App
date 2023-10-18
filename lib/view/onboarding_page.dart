import 'dart:math';

import 'package:elance_app/view/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late PageController _pageController = PageController();
  bool lastPage = false;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.96,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 13, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      lastPage
                          ? SizedBox(
                              height: 50,
                            )
                          : TextButton.icon(
                              onPressed: () {
                                _pageController.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeInOut);
                                // _pageController.jumpToPage(2);
                              },
                              icon: Icon(
                                Icons.skip_previous_outlined,
                                size: 29,
                                color: Color.fromRGBO(7, 42, 79, 1),
                              ),
                              label: Text(
                                "Skip",
                                style: TextStyle(
                                    color: Color.fromRGBO(7, 42, 79, 1),
                                    fontSize: 19),
                              ))
                    ],
                  ),
                  Container(
                    height: 450,
                    child: PageView(
                        controller: _pageController,
                        onPageChanged: (index) {
                          setState(() {
                            lastPage = index == 2;
                          });
                        },
                        children: [
                          buildContainer(
                            urlImage: "assets/image/onboard-1.png",
                            title: "Easier",
                          ),
                          buildContainer(
                            urlImage: "assets/image/onboard-2.png",
                            title: "Smarter",
                          ),
                          buildContainer(
                            urlImage: "assets/image/onboard-3.png",
                            title: "Interactive",
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Flexible(
                    child: SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        effect: WormEffect(
                          spacing: 10,
                          radius: 5,
                          dotWidth: 13,
                          dotHeight: 5,
                          dotColor: Color.fromARGB(255, 187, 199, 187),
                          activeDotColor: Color.fromRGBO(12, 84, 160, 1),
                        )),
                  ),
                ],
              ))),
      bottomSheet: Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: GestureDetector(
          onTap: () {
            // final prefs = await SharedPreferences.getInstance();
            // prefs.setBool("showHome", true);
            lastPage
                ? Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homepage(),
                    ))
                : _pageController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
            child: Center(
                child: lastPage
                    ? Text(
                        "Get Started",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    : Text(
                        "Next",
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
      ),
    );
  }

  Widget buildContainer({
    required String urlImage,
    required String title,
  }) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Column(
        children: [
          Image.asset(urlImage, scale: 1.2),
          Text(
            title,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(7, 42, 79, 1)),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Column(
            children: [
              Text(
                "Explore the concepts through an",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(7, 42, 79, 1)),
              ),
              Text(
                "immpresive visualisation experience",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(7, 42, 79, 1)),
              ),
              Text(
                "hat is high on ineractivity and",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(7, 42, 79, 1)),
              ),
              Text(
                "engagement",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(7, 42, 79, 1)),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
