import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key, this.widget});
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 36,
        width: 39,
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromRGBO(12, 84, 160, 0.13)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)),
        child: widget);
  }
}
