import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key, this.title, this.leading, this.function});
  final Widget? title;
  final Widget? leading;

  final Function()? function;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(color: Color.fromRGBO(221, 221, 221, 1)))),
      child: ListTile(
          leading: leading,
          title: title,
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color.fromRGBO(12, 84, 160, 1),
          ),
          onTap: function!),
    );
  }
}
