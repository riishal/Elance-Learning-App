import 'package:flutter/material.dart';

class SeeAllWidget extends StatelessWidget {
  const SeeAllWidget({super.key, this.widget});
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: widget!),
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
    );
  }
}
