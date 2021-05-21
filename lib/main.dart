import 'package:flutter/material.dart';
import 'pages/loginpage.dart';
import 'pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple[900],
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/login",
      routes: {
        "/home": (context) => Homepage(),
        "/login": (context) => Loginpage(),
      },
    );
  }
}
