import 'package:flutter/material.dart';

class TestContainer extends StatelessWidget {
  const TestContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/image/container-line.png")),
                  color: const Color.fromRGBO(12, 84, 160, 0.22),
                  borderRadius: BorderRadius.circular(9)),
              child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 7,
                        ),
                        Image.asset("assets/image/elance1.png"),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Hello! Connect with us on our\n social media platforms to know\n more about us",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 9,
                              color: Color.fromRGBO(7, 42, 79, 1)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Image.asset("assets/image/medias.png")
                      ]))),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/image/footer-image.png",
              scale: 1,
            ))
      ]),
    );
  }
}
