import 'package:flutter/material.dart';

class MarketCardRefactored extends StatelessWidget {
  final Color color;
  final String cardHeading;

  const MarketCardRefactored(
      {super.key, required this.color, required this.cardHeading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
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
        ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 130, child: Text(cardHeading)),
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
