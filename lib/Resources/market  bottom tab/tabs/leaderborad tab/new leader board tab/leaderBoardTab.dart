// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../Common res/reusableButton.dart';
import 'leader_tab_top_container.dart';
import 'leaders_table.dart';

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

class LeaderBoardrTab extends StatefulWidget {
  const LeaderBoardrTab({super.key});

  @override
  State<LeaderBoardrTab> createState() => _LeaderBoardrTabState();
}

class _LeaderBoardrTabState extends State<LeaderBoardrTab> {
  void updateIndex() {
    setState(() {});
  }

  static var selectedIndexOption = ValueNotifier(indexOptions.first);
  static String? selectedLoserGainerOption = looserGainer.first;
  @override
  Widget build(BuildContext context) {
    // bool isIndex = true;

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LeadersTopContainer(
                  onTap: () {
                    setState(() {
                      BottomSheetExtracted(context);
                    });
                  },
                  seletedOption: selectedLoserGainerOption!,
                ),
                ValueListenableBuilder(
                  valueListenable: selectedIndexOption,
                  builder: (BuildContext context, value, child) {
                    return LeadersTopContainer(
                      onTap: () {
                        setState(() {
                          BottomSheetExtracted(context);
                        });
                      },
                      seletedOption: selectedIndexOption.value,
                    );
                  },
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            leaderBoardTableRefactored(),
          ],
        ));
  }

  Future<dynamic> BottomSheetExtracted(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) => BottomSheetIndexContents(),
    );
  }
}

class BottomSheetIndexContents extends StatefulWidget {
  @override
  State<BottomSheetIndexContents> createState() =>
      _BottomSheetIndexContentsState();
}

class _BottomSheetIndexContentsState extends State<BottomSheetIndexContents> {
  // late String SelectedValue;
  static String SelectedValue = indexOptions.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
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
              itemCount: indexOptions.length,
              itemBuilder: (context, index) {
                return Container(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        SelectedValue = indexOptions[index];
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                          value: indexOptions[index],
                          groupValue: SelectedValue,
                          onChanged: (value) {
                            setState(() {
                              SelectedValue = indexOptions[index];
                            });
                          },
                        ),
                        Text(indexOptions[index])
                      ],
                    ),
                  ),
                );
              },
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
                    _LeaderBoardrTabState.selectedIndexOption.value =
                        indexOptions.first;
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
                    setState(() {
                      _LeaderBoardrTabState.selectedIndexOption.value =
                          SelectedValue;
                    });
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
