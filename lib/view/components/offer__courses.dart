import 'package:flutter/material.dart';

class OfferCourseWidget extends StatelessWidget {
  const OfferCourseWidget({super.key, this.widget, this.color});
  final Widget? widget;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      width: 170,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: widget,
    );
  }
}
