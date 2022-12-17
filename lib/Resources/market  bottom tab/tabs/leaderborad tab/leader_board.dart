// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class LeaderBoardTableTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TableRow TableRows({required text, required LTP, required change}) {
      return TableRow(children: [
        Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(text,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                ))),
        TableHeadingsRefactored(text: LTP),
        Container(
            decoration: BoxDecoration(
                color: Colors.green.shade600,
                borderRadius: BorderRadius.circular(5)),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              "- " + change + '%',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 10),
            )),
      ]);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [LeadersTopContainer(), LeadersTopContainer()],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: {
                1: IntrinsicColumnWidth(),
                2: IntrinsicColumnWidth()
              },
              border: TableBorder.all(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 1),
              children: [
                TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Stock Symbol',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                              ))),
                      TableHeadingsRefactored(text: 'LTP'),
                      TableHeadingsRefactored(text: 'Change'),
                    ]),
                TableRows(text: 'TATAMOTORS', LTP: '150.0', change: '0.10'),
                TableRows(text: 'HDFCBANK', LTP: '1050.00', change: '0.20'),
                TableRows(text: 'TATAMOTORS', LTP: '13350.0', change: '0.30'),
                TableRows(text: 'HDFCBANK', LTP: '150.00', change: '0.40'),
                TableRows(text: 'TATAMOTORS', LTP: '13350.0', change: '0.50'),
                TableRows(text: 'HDFCBANK', LTP: '1350.00', change: '0.60')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TableHeadingsRefactored extends StatelessWidget {
  final text;

  const TableHeadingsRefactored({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          )),
    );
  }
}

class LeadersTopContainer extends StatelessWidget {
  const LeadersTopContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Top Gainers'),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.grey.shade400,
              child: Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
