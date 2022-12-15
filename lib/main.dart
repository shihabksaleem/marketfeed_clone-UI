import 'package:day_1_dec_8/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
          ),
        ),
        initialRoute: ScreenLogin.id,
        routes: {
          //static screen id used for named rtoutes
          ScreenLogin.id: (context) => ScreenLogin(),
          ScreenHome.id: (context) => ScreenHome(),
        },
        debugShowCheckedModeBanner: false,
        home: ScreenLogin()),
  );
}
