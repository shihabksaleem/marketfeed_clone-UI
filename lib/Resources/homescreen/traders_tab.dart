// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../constants/constants.dart';

class TradersTab extends StatelessWidget {
  const TradersTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TradersTopListTile(),
          HomeTradersList(
            traderNamme: 'Sharique Samsudheen',
            capital: '₹2L',
            imagePath: 'images/shareeque Shamsudheen.jpg',
            percentage: '40%',
            traderDetail: 'Positional NIFTY option selling',
          ),
          HomeTradersList(
            traderNamme: 'Darshan Rathod',
            capital: '₹2L',
            imagePath: 'images/Darshan Rathod.png',
            percentage: '60%',
            traderDetail: 'Positional Futures Trading',
          ),
          HomeTradersList(
            traderNamme: 'Ajay Ajith',
            capital: '₹1.5L',
            imagePath: 'images/AJAY AJITH.png',
            percentage: '40%',
            traderDetail: 'Intraday NIFTY Futures Trading',
          ),
          HomeTradersList(
            traderNamme: 'Mohammed Nihal',
            capital: '₹50k',
            imagePath: 'images/Nihal.png',
            percentage: '30%',
            traderDetail: 'Equity Swing Trading',
          ),
          HomeTradersList(
            traderNamme: 'Salman Faris',
            capital: '₹50k',
            imagePath: 'images/salman faris.png',
            percentage: '30%',
            traderDetail: 'Swing Trading',
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class TradersTopListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.only(top: 20),
      title: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: Text(
          'Get Live Trades Of Profitable Traders',
          style: TextStyle(
            letterSpacing: .5,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      subtitle: Text(
        'Choose a right trader from the list to get trade ideas and updates instantly.',
        style: TextStyle(fontSize: 13),
      ),
    );
  }
}

class HomeTradersList extends StatelessWidget {
  final String traderNamme;
  final String capital;
  final String percentage;
  final String traderDetail;
  final String imagePath;

  const HomeTradersList({
    required this.traderNamme,
    required this.capital,
    required this.percentage,
    required this.traderDetail,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          children: [
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
              leading: CircleAvatar(
                  radius: 30, backgroundImage: AssetImage(imagePath)),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  traderNamme,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 5),
                child: Text(
                  traderDetail,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    background: Paint()
                      ..strokeWidth = 17
                      ..color = kSubtitleBgColor
                      ..strokeJoin = StrokeJoin.round
                      ..style = PaintingStyle.stroke,
                  ),
                ),
              ),
              trailing: Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: kiconBgColor,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: kiconColor,
                        size: 14,
                      ),
                      onPressed: () {},
                    ),
                  )),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Min Capital  ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: capital,
                          style: TextStyle(fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Yearly Return  ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: percentage,
                          style: TextStyle(fontWeight: FontWeight.w700)),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
