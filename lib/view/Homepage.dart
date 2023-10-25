import 'package:elance_app/view/OTP-Login/mobile_number_login.dart';
import 'package:elance_app/view/components/financial_card.dart';
import 'package:elance_app/view/components/offer__courses.dart';
import 'package:elance_app/view/components/see_all_widget.dart';
import 'package:elance_app/view/components/text_widget.dart';
import 'package:elance_app/view/components/top_bar.dart';
import 'package:elance_app/view/menudrawer/drawer_page.dart';
import 'package:elance_app/view/HelpCenter/helpline.dart';
import 'package:elance_app/view/short_videopage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'components/footer_widget.dart';

int videoIndex = 0;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    late PageController pageController = PageController();

    List<String> procadsList = [
      "assets/image/Rectangle 27.png",
      "assets/image/Rectangle 2e.png",
    ];

    return Scaffold(
      drawer: DrawerPage(),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(builder: (context) {
                  return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: const TopBarWidget(
                        widget: Icon(
                          Icons.menu,
                          size: 20,
                        ),
                      ));
                }),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HelpLinepage(),
                          ));
                    },
                    child: TopBarWidget(
                      widget: Image.asset("assets/image/appbar-icon.png"),
                    ))
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const TextWidget(
                      text: "Whats New!",
                    ),
                    SizedBox(
                      height: 147,
                      width: double.infinity,
                      child: Stack(children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              height: 125,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/image/container-line.png")),
                                  color:
                                      const Color.fromRGBO(12, 84, 160, 0.22),
                                  borderRadius: BorderRadius.circular(9)),
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "NEW COURSE ADDED!",
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 8,
                                              color: const Color.fromRGBO(
                                                  7, 42, 79, 1)),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          "Get your CMA (USA) Course\nnow starting at Rs. 49999/-",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 13,
                                              color:
                                                  Color.fromRGBO(7, 42, 79, 1)),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              "Enroll your course now",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10,
                                                  color: Color.fromRGBO(
                                                      12, 84, 160, 1)),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            CircleAvatar(
                                                backgroundColor: Color.fromRGBO(
                                                    12, 84, 160, 1),
                                                radius: 8,
                                                child: Icon(
                                                  Icons
                                                      .keyboard_arrow_right_outlined,
                                                  color: Colors.white,
                                                  size: 15,
                                                )),
                                          ],
                                        ),
                                      ]))),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Image.asset(
                              "assets/image/basil-elance1 1.png",
                              scale: 1,
                            ))
                      ]),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const TextWidget(
                      text: "Courses We Offer",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MobileNumberLoginpage(),
                            ));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                                child: OfferCourseWidget(
                              color: Color.fromRGBO(255, 230, 216, 1),
                              widget: Center(
                                child: TextWidget(
                                  text: "Professional\n\t\t\t\t Courses",
                                ),
                              ),
                            )),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: OfferCourseWidget(
                              color: const Color.fromRGBO(216, 225, 255, 1),
                              widget: Center(
                                  child: Image.asset("assets/image/Frame.png")),
                            ))
                          ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MobileNumberLoginpage(),
                            ));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ///////
                            Expanded(
                              child: OfferCourseWidget(
                                color: const Color.fromRGBO(255, 216, 237, 1),
                                widget: Center(
                                    child:
                                        Image.asset("assets/image/fram1.png")),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: OfferCourseWidget(
                              color: const Color.fromRGBO(236, 216, 255, 1),
                              widget: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/image/Rectangle 3.png"),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                    "Plus",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color.fromRGBO(7, 42, 79, 1)),
                                  )
                                ],
                              ),
                            ))
                          ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SeeAllWidget(
                      widget: TextWidget(
                        text: "Short videos",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 154,
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                mainAxisExtent: 110,
                                maxCrossAxisExtent: 190,
                                childAspectRatio: 1.78,
                                mainAxisSpacing: 11,
                                crossAxisSpacing: 10),
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            videoIndex = index;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ShortVideos(index: index),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                  "assets/image/video 1.png",
                                )),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Stack(
                                alignment: Alignment.center,
                                children: [
                                  // Image.asset(
                                  //   'assets/image/video 1.png',
                                  // ),
                                  Center(
                                      child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                                ]),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Live",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(239, 16, 16, 1)),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                            flex: 1,
                            child: TextWidget(
                              text: "Streaming Videos",
                            )),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color.fromRGBO(12, 84, 160, 1)),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        CircleAvatar(
                            backgroundColor: Color.fromRGBO(12, 84, 160, 1),
                            radius: 8,
                            child: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.white,
                              size: 15,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      height: 160,
                      child:
                          PageView(controller: pageController, children: const [
                        FinancialCard(
                          color: Color.fromRGBO(255, 230, 216, 1),
                        ),
                        FinancialCard(
                          color: Color.fromRGBO(12, 84, 160, 0.22),
                        ),
                        FinancialCard(
                          color: Color.fromARGB(56, 170, 235, 176),
                        ),
                        FinancialCard(
                          color: Color.fromARGB(56, 161, 217, 234),
                        )
                      ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SmoothPageIndicator(
                          controller: pageController,
                          count: 4,
                          effect: const WormEffect(
                            spacing: 15,
                            radius: 5,
                            dotWidth: 30,
                            dotHeight: 4,
                            dotColor: Color.fromARGB(255, 187, 199, 187),
                            activeDotColor: Color.fromRGBO(12, 84, 160, 1),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SeeAllWidget(
                      widget: TextWidget(
                        text: "Podcasts",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 160,
                      child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => SizedBox(
                                height: 80,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                            procadsList[index],
                                          ))),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Expanded(
                                      child: ListTile(
                                        contentPadding:
                                            EdgeInsets.only(right: 0),
                                        title: Text(
                                          "Why CMA is important?",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        subtitle: Text(
                                          "by Jojo Tomy, B.com, CMA",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.italic),
                                        ),
                                        trailing: CircleAvatar(
                                            backgroundColor: Color.fromRGBO(
                                                12, 84, 160, 0.13),
                                            child: Icon(
                                              Icons.play_arrow,
                                              color: Color.fromRGBO(
                                                  12, 84, 160, 1),
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) => const SizedBox(
                                height: 0,
                              ),
                          itemCount: 2),
                    ),
                    const FooterWidget(),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
