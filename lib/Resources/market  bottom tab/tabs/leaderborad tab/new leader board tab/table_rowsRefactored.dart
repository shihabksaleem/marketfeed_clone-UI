import 'package:flutter/material.dart';

import 'Table_Headings_Refactored.dart';

TableRow TableRowsRefactored({required text, required LTP, required change}) {
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
