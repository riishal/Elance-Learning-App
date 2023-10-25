import 'package:elance_app/view/choose_option_page.dart';
import 'package:elance_app/view/splash_screen.dart';
import 'package:flutter/material.dart';

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
      home: ChooseOptionPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
