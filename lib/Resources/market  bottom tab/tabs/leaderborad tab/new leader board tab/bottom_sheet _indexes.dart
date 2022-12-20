

// class BottomSheetIndexContents extends StatefulWidget {
//   @override
//   State<BottomSheetIndexContents> createState() =>
//       _BottomSheetIndexContentsState();
// }

// class _BottomSheetIndexContentsState extends State<BottomSheetIndexContents> {
//   // late String SelectedValue;
//   static String SelectedValue = indexOptions.first;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.75,
//       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Choose an option',
//             style: TextStyle(fontSize: 20),
//           ),
//           Divider(),
//           Expanded(
//             child: ListView.builder(
//               itemCount: indexOptions.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   child: InkWell(
//                     onTap: () {
//                       setState(() {
//                         SelectedValue = indexOptions[index];
//                       });
//                     },
//                     child: Row(
//                       children: [
//                         Radio(
//                           value: indexOptions[index],
//                           groupValue: SelectedValue,
//                           onChanged: (value) {
//                             setState(() {
//                               SelectedValue = indexOptions[index];
//                             });
//                           },
//                         ),
//                         Text(indexOptions[index])
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             children: [
//               Expanded(
//                 child: ReusableButton(
//                   buttoncolor: false,
//                   buttonText: 'Reset',
//                   onPressed: () {
//                     _LeaderBoardrTabState.selectedIndexOption.value =
//                         indexOptions.first;
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Expanded(
//                 child: ReusableButton(
//                   buttonText: 'Confirm',
//                   onPressed: () {
//                     Navigator.pop(context);
//                     setState(() {
//                       _LeaderBoardrTabState.selectedIndexOption.value =
//                           SelectedValue;
//                     });
//                   },
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }


