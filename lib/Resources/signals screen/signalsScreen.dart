// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class SignalsTab extends StatelessWidget {
  const SignalsTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> signalsCardDataList = [
      {
        'imageVisibility': true,
        'cardHeading': 'Charts',
        'imagePath': 'images/read tab images/market01.jpg',
        'publisherPhoto': 'images/salman faris.png',
        'publisherName': 'By Salman',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imageVisibility': true,
        'cardHeading': 'Market Updates',
        'imagePath': 'images/read tab images/market02.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imageVisibility': false,
        'cardHeading': 'Market Update',
        'imagePath': '',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imageVisibility': false,
        'cardHeading': 'Market Update',
        'imagePath': '',
        'publisherPhoto': 'images/shareeque Shamsudheen.jpg',
        'publisherName': 'By Sharique',
        'newsDescription':
            'GST Council likely to provide tax relief to standlone petroleum refineries: Media reports',
      },
      {
        'imageVisibility': true,
        'cardHeading': 'Charts',
        'imagePath': 'images/read tab images/market03.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imageVisibility': false,
        'cardHeading': 'Market Updates',
        'imagePath': 'images/readEditorial image.jpg',
        'publisherPhoto': 'images/AJAY AJITH.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'UK Inflation inflation Rare Nov (YoY) at 10.7% vs 11.1% previous vs estimated of 10.9%.',
      },
      {
        'imageVisibility': false,
        'cardHeading': 'Market Updates',
        'imagePath': '',
        'publisherPhoto': 'images/Nihal.png',
        'publisherName': 'By Nilha',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
    ];
    // to reverse the list to the last added item on the top of the screen
    List signalsCardDataListReaversed = signalsCardDataList.reversed.toList();
    return ListView.builder(
        itemBuilder: (context, index) => SignalScreenCardRefactered(
              image: signalsCardDataListReaversed[index]['imageVisibility'],
              imagePath: signalsCardDataListReaversed[index]['imagePath'],
              publisherPhoto: signalsCardDataListReaversed[index]
                  ['publisherPhoto'],
              publisherName: signalsCardDataListReaversed[index]
                  ['publisherName'],
              newsDescription: signalsCardDataListReaversed[index]
                  ['newsDescription'],
              cardHeading: signalsCardDataListReaversed[index]['cardHeading'],
            ),
        itemCount: signalsCardDataListReaversed.length);
  }
}

class SignalScreenCardRefactered extends StatelessWidget {
  final String imagePath;
  final publisherPhoto;
  final publisherName;
  final newsDescription;

  final bool image;
  final cardHeading;

  const SignalScreenCardRefactered({
    required this.cardHeading,
    required this.publisherPhoto,
    required this.publisherName,
    required this.newsDescription,
    this.imagePath = '',
    this.image = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(1, 3),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardHeading,
                style: TextStyle(fontSize: 16, color: Color(0xFF4266c7)),
              ),
              SizedBox(height: 8),
              image
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          imagePath,
                        ),
                      ),
                    )
                  : SizedBox(),
              Text(
                newsDescription,
                style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  CircleAvatar(
                      radius: 10, backgroundImage: AssetImage(publisherPhoto)),
                  SizedBox(width: 10),
                  Text(
                    publisherName,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                '6 hours ago ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
