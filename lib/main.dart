import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/LoginPage.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    //flutter k andr wudgets use ki jaati hain
    //e.g text , icons , status bar , app bar, body ,heiarchy widgets hoti h

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),

      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: MyRoutes
          .HomeRoute, //initial route mein back slash/ replace hojata hai
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBlue = Color.fromARGB(255, 230, 0, 0);
}
