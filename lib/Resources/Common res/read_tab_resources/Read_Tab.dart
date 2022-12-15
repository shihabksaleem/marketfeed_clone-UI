// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'Read_Jargonstab.dart';
import 'Read_market_tab.dart';
import 'custom_tab_Indicator.dart';
import 'read_Editorial.dart';

class ReadTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          DefaultTabController(
            length: 3, // length of tabs
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: TabBar(
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
                Container(
                  //height of TabBarView
                  height: MediaQuery.of(context).size.height - 200,

                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: Colors.transparent, width: 0.5))),
                  child: TabBarView(
                    children: <Widget>[
                      ReadMarketTab(),
                      ReadEditorialTab(),
                      ReadJargonsTab(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
