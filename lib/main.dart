import 'package:flutter/material.dart';
import 'package:finalproject/pages/home_page.dart';
import 'package:finalproject/pages/login_page.dart';
import 'package:finalproject/pages/signup_page.dart';
import 'package:finalproject/utensils/routes.dart';
import 'package:flutter/foundation.dart';


void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Homepage(),
        MyRoutes.homeroute: (context) => Homepage(),
        MyRoutes.loginroute: (context) => Loginpage(),
        MyRoutes.signroute: (context) => Signpage(),
      },
    );
  }
}
