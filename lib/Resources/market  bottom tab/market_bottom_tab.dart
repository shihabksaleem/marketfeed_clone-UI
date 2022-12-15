// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:day_1_dec_8/Resources/market%20%20bottom%20tab/tabs/watchlistTab.dart';
import 'package:flutter/material.dart';

import '../Common res/read_tab_resources/custom_tab_Indicator.dart';

class MarketBottomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DefaultTabController(
          length: 4,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: TabBar(
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
              Container(
                height: MediaQuery.of(context).size.height - 200,
                //height of TabBarView
                decoration: BoxDecoration(
                    border: Border(
                        top:
                            BorderSide(color: Colors.transparent, width: 0.5))),
                child: TabBarView(
                  children: <Widget>[
                    WatchlistTab(),
                    Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
