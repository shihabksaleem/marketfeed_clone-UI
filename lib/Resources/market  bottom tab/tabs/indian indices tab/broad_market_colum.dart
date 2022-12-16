import 'package:flutter/material.dart';

import '../../../Common res/Market_Card_Refactored.dart';

class BroadMarketIndicesColum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          'Broad Market Indices',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        MarketCardRefactored(
          cardHeading: 'INDIA VIX',
          color: Colors.red,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY 100',
          color: Colors.green,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY 200',
          color: Colors.green,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY 500',
          color: Colors.red,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY MIDCAP 50',
          color: Colors.red,
        ),
        MarketCardRefactored(
          cardHeading: 'NIFTY SMLCAP 50 ',
          color: Colors.red,
        ),
      ],
    );
  }
}
