// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../Common res/Market_Card_Refactored.dart';

class AsianMarkets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'European Markets',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        MarketCardRefactored(
          globalIndex: true,
          cardHeading: 'NIFTY BANK',
          color: Colors.red,
        ),
        MarketCardRefactored(
          activeMarket: Colors.green,
          globalIndex: true,
          cardHeading: 'NIFTY AUTO',
          color: Colors.green,
        ),
        MarketCardRefactored(
          activeMarket: Colors.green,
          globalIndex: true,
          cardHeading: 'NIFTY FINSERV',
          color: Colors.green,
        ),
        MarketCardRefactored(
          globalIndex: true,
          cardHeading: 'NIFTY FMCG',
          color: Colors.red,
        ),
        MarketCardRefactored(
          globalIndex: true,
          cardHeading: 'NIFTY IT',
          color: Colors.red,
        ),
        MarketCardRefactored(
          globalIndex: true,
          cardHeading: 'NIFTY MEDIA',
          color: Colors.red,
        ),
      ],
    );
  }
}
