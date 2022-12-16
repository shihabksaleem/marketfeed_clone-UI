// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'Read_Jargonstab.dart';
import 'Read_market_tab.dart';
import 'custom_tab_Indicator.dart';
import 'read_Editorial.dart';

class ReadTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, // length of tabs
        initialIndex: 0,
        child: Scaffold(
          backgroundColor: kHomeScaffoldColor,
          appBar: AppBar(
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: TabBar(
                isScrollable: true,
                indicator: const CustomTabIndicator(),
                labelColor: Color(0xFF4266c7),
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: 'Market'),
                  Tab(text: 'Editorial'),
                  Tab(text: 'Jargons'),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ReadMarketTab(),
              ReadEditorialTab(),
              ReadJargonsTab(),
            ],
          ),
        ));
  }
}
