import 'package:flutter/material.dart';

import 'Table_Headings_Refactored.dart';
import 'table_rowsRefactored.dart';

class leaderBoardTableRefactored extends StatelessWidget {
  const leaderBoardTableRefactored({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {1: IntrinsicColumnWidth(), 2: IntrinsicColumnWidth()},
      border: TableBorder.all(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey.shade300,
          style: BorderStyle.solid,
          width: 1),
      children: [
        TableRow(decoration: BoxDecoration(color: Colors.grey[200]), children: [
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
        TableRowsRefactored(text: 'TATAMOTORS', LTP: '150.0', change: '0.10'),
        TableRowsRefactored(text: 'HDFCBANK', LTP: '1050.00', change: '0.20'),
        TableRowsRefactored(text: 'TATAMOTORS', LTP: '13350.0', change: '0.30'),
        TableRowsRefactored(text: 'HDFCBANK', LTP: '150.00', change: '0.40'),
        TableRowsRefactored(text: 'TATAMOTORS', LTP: '13350.0', change: '0.50'),
        TableRowsRefactored(text: 'HDFCBANK', LTP: '1350.00', change: '0.60')
      ],
    );
  }
}

class TableRows {}
