// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:day_1_dec_8/Resources/market%20%20bottom%20tab/tabs/global%20indiced%20tab/global_indices_tab.dart';
import 'package:day_1_dec_8/Resources/market%20%20bottom%20tab/tabs/leaderborad%20tab/new%20leader%20board%20tab/leaderBoardTab.dart';

import 'package:flutter/material.dart';

import '../app drawer/app_drawer.dart';
import '../constants/constants.dart';
import '../read_tab_resources/custom_tab_Indicator.dart';
import 'tabs/indian indices tab/indian_indices_Tab.dart';
import 'tabs/watchlist tab/watchlistTab.dart';

class MarketBottomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, // length of tabs

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
                      Tab(text: 'Watchlist'),
                      Tab(text: 'Indian Indices'),
                      Tab(text: 'Global indices'),
                      Tab(text: 'Leaderboard'),
                    ],
                  ),
                ),
              ],
              body: TabBarView(
                children: <Widget>[
                  WatchlistTab(),
                  IndianIndicesTab(),
                  GlobalIndicesTab(),
                  LeaderBoardrTab(),
                ],
              ),
            )));
  }
}
