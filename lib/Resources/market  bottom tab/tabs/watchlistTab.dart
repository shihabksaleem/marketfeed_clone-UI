// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class WatchlistTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List watchlistListData = [
      MarketCardRefactored(
        color: Colors.red,
      ),
      MarketCardRefactored(
        color: Colors.green,
      ),
      MarketCardRefactored(
        color: Colors.green,
      ),
      MarketCardRefactored(
        color: Colors.red,
      ),
      MarketCardRefactored(
        color: Colors.red,
      ),
    ];
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
            child: Text(
          'Last updated on Thu 15 Dec 12:50 PM',
          style: TextStyle(
              fontSize: 10, letterSpacing: .2, color: Colors.grey.shade600),
        )),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => watchlistListData[index],
          ),
        ),
      ],
    );
  }
}

class MarketCardRefactored extends StatelessWidget {
  final Color color;

  const MarketCardRefactored({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(
              1,
              3,
            ),
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(3)),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('NIFTY BANK '),
            Text('44,044,44'),
            Container(
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(4)),
              width: 50,
              height: 20,
              child: Center(
                  child: Text(
                '+0.01',
                style: TextStyle(color: Colors.white),
              )),
            ),
            Text('+6.80'),
          ],
        ),
      ),
    );
  }
}
