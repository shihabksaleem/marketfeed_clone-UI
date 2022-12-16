import 'package:flutter/material.dart';

import '../../../Common res/Market_Card_Refactored.dart';

class SectoralIndicesColum extends StatelessWidget {
  const SectoralIndicesColum({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'Sectoral Indices',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY BANK',
          color: Colors.red,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY AUTO',
          color: Colors.green,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY FINSERV',
          color: Colors.green,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY FMCG',
          color: Colors.red,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY IT',
          color: Colors.red,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY MEDIA',
          color: Colors.red,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY METAL',
          color: Colors.green,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY PHARMA',
          color: Colors.green,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY PSU BANK',
          color: Colors.red,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY REALTY',
          color: Colors.red,
        ),
      ],
    );
  }
}
