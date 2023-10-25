import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.name, required this.onTap});
  final String name;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 25),
        child: Center(
            child: Text(
          name,
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
    );
  }
}
