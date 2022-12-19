// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../app drawer/app_drawer.dart';
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

      child: Scaffold(
        drawer: SideBar(),
        backgroundColor: kHomeScaffoldColor,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
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
              floating: true,
              snap: true,
              pinned: true,
              title: Image.asset(
                'images/logo.png',
                width: 200,
              ),
              centerTitle: true,
              bottom: TabBar(
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
            )
          ],
          body: Container(
            child: TabBarView(
              children: <Widget>[
                ReadMarketTab(),
                ReadEditorialTab(),
                ReadJargonsTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
