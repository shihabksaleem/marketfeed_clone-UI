// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:day_1_dec_8/Resources/Common%20res/reusableButton.dart';
import 'package:flutter/material.dart';

import 'Table_Headings_Refactored.dart';
import 'leaderborard_bottom_sheet.dart';
import 'new leader board tab/leader_tab_top_container.dart';
import 'new leader board tab/leaders_table.dart';
import 'new leader board tab/table_rowsRefactored.dart';

class LeaderBoardTableTab extends StatefulWidget {
  @override
  State<LeaderBoardTableTab> createState() => _LeaderBoardTableTabState();
}

class _LeaderBoardTableTabState extends State<LeaderBoardTableTab> {
  List indexOptions = [
    'Nifty 50',
    'Nifty 100',
    'FnO',
    'Nifty 500',
    'Nifty Auto',
    'Nifty Bank',
    'Nifty FMCG',
    'Nifty Pharma',
    'Nifty IT',
    'Nifty Metal',
    'NR4',
    'NR7',
    'SWING',
  ];
  List looserGainer = ['Top Gainers', 'Top Losers'];
  String? selectedIndexOption;
  String? selectedLoserGainerOption;
  static bool index = true;
  bool _selected = true;
  @override
  Widget build(BuildContext context) {
    selectedIndexOption = indexOptions[0];
    selectedLoserGainerOption = looserGainer[0];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LeadersTopContainer(
                onTap: () {
                  _LeaderBoardTableTabState.index = false;
                  setState(() {
                    BottomSheetRefactored(context, _selected);
                  });
                },
                seletedOption: selectedLoserGainerOption!,
              ),
              LeadersTopContainer(
                seletedOption: selectedIndexOption!,
                onTap: () {
                  _LeaderBoardTableTabState.index = true;
                  setState(() {
                    BottomSheetRefactored(context, _selected);
                  });
                },
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: leaderBoardTableRefactored(),
          ),
        ],
      ),
    );
  }

//refactored bottom sheet
  Future<dynamic> BottomSheetRefactored(BuildContext context, bool _selected) {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          height: _LeaderBoardTableTabState.index
              ? MediaQuery.of(context).size.height * 0.75
              : MediaQuery.of(context).size.height * .30,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose an option',
                style: TextStyle(fontSize: 20),
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: _LeaderBoardTableTabState.index
                      ? indexOptions.length
                      : looserGainer.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onDoubleTap: () {
                      setState(() {
                        _selected = !_selected;
                      });
                    },
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      title: Text(_LeaderBoardTableTabState.index
                          ? indexOptions[index]
                          : looserGainer[index]),
                      value: _selected,
                      onChanged: (
                        bool? value,
                      ) {
                        setState(() {
                          _selected = !value!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: ReusableButton(
                      buttoncolor: false,
                      buttonText: 'Reset',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ReusableButton(
                      buttonText: 'Confirm',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
