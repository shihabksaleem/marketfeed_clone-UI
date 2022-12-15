// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, no_leading_underscores_for_local_identifiers

import 'package:day_1_dec_8/Resources/constants/constants.dart';
import 'package:day_1_dec_8/Resources/market%20%20bottom%20tab/market_bottom_tab.dart';
import 'package:day_1_dec_8/Resources/signals%20screen/signalsScreen.dart';
import 'package:flutter/material.dart';
import '../Resources/Common res/read_tab_resources/Read_Tab.dart';
import '../Resources/app drawer/app_drawer.dart';
import '../Resources/homescreen/traders_tab.dart';

class ScreenHome extends StatefulWidget {
  static String id = 'Home_Screen';

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int selectodIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      selectodIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Bottom bar navigation list
    List _selectedTabList = [
      TradersTab(),
      ReadTab(),
      SignalsTab(),
      MarketBottomTab()
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            padding: const EdgeInsets.only(left: 15),
            color: Colors.black,
            icon: const Icon(
              Icons.person,
              size: 30,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        centerTitle: true,
        title: Image.asset(
          'images/logo.png',
          width: 200,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectodIndex,
          onTap: _onItemTapped,
          selectedItemColor: kActiveIconColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Traders'),
            BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Read'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_outlined), label: 'Signal'),
            BottomNavigationBarItem(
                icon: Icon(Icons.analytics), label: 'Market'),
          ]),
      drawer: SideBar(),
      backgroundColor: kHomeScaffoldColor,
      body: _selectedTabList.elementAt(selectodIndex),
    );
  }
}
