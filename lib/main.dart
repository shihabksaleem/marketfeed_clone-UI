import 'package:day_1_dec_8/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/splashscreeen.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        //static screen id used for named rtoutes
        SplashScreen.id: (context) => SplashScreen(),
        ScreenLogin.id: (context) => ScreenLogin(),
        ScreenHome.id: (context) => ScreenHome(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
