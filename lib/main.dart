import 'package:elance_app/view/Homepage.dart';
import 'package:elance_app/view/onboarding_page.dart';
import 'package:elance_app/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // final prefs = await SharedPreferences.getInstance();
  // final showHome = prefs.getBool("showHome") ?? false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Montserrat",
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
