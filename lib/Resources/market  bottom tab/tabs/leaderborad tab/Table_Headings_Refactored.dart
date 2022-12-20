import 'package:flutter/material.dart';

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
