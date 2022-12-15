// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../Resources/Common res/reusable_bottom_container.dart';

class ScreenLogin extends StatelessWidget {
  static String id = 'Login_Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('images/logo.png'),
          ),
          ReusableBottomContainer()
        ],
      ),
    );
  }
}
