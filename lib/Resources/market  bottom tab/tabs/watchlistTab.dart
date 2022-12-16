// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../Common res/Market_Card_Refactored.dart';

class WatchlistTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List watchlistListData = [
      MarketCardRefactored(
        cardHeading: 'NIFTY PHARMA',
        color: Colors.red,
      ),
      MarketCardRefactored(
        cardHeading: 'NIFTY PHARMA',
        color: Colors.green,
      ),
      MarketCardRefactored(
        cardHeading: 'NIFTY PHARMA',
        color: Colors.green,
      ),
      MarketCardRefactored(
        cardHeading: 'NIFTY PHARMA',
        color: Colors.red,
      ),
      MarketCardRefactored(
        cardHeading: 'NIFTY PHARMA',
        color: Colors.red,
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
              child: Text(
            'Last updated on Thu 15 Dec 12:50 PM',
            style: TextStyle(
                fontSize: 12, letterSpacing: .2, color: Colors.grey.shade600),
          )),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => watchlistListData[index],
            ),
          ),
        ],
      ),
    );
  }
}
