import 'package:day_1_dec_8/Resources/market%20%20bottom%20tab/tabs/global%20indiced%20tab/asianMarkets.dart';
import 'package:day_1_dec_8/Resources/market%20%20bottom%20tab/tabs/global%20indiced%20tab/european_Markets.dart';
import 'package:flutter/material.dart';

import 'Us_marketsData.dart';

class GlobalIndicesTab extends StatelessWidget {
  const GlobalIndicesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      children: [
        Container(
            child: Center(
          child: Text(
            'Last updated on Thu 15 Dec 12:50 PM',
            style: TextStyle(
                fontSize: 12, letterSpacing: .2, color: Colors.grey.shade600),
          ),
        )),
        SizedBox(
          height: 5,
        ),
        UsMarketsData(),
        EuropeanMarketsData(),
        AsianMarkets()
      ],
    );
  }
}
