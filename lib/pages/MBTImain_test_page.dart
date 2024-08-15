import 'package:flutter/material.dart';
import 'package:flutter_application_1/hooks/select_otherMBTI.dart';
import 'package:flutter_application_1/hooks/find_trip_MBTI.dart';

class SecondBasicFrame extends StatefulWidget {
  @override
  _BasicFramePageState createState() => _BasicFramePageState();
}

class _BasicFramePageState extends State<SecondBasicFrame> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double boxHeight = screenHeight * 0.2;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.08),
        child: AppBar(
          centerTitle: true,
          title: Text(
            'MBTrip',
            style: TextStyle(
              fontFamily: 'Pretendard',
              fontSize: screenHeight * 0.04,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '나의 여행 MBTI는?',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: screenHeight * 0.03,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.0),
            SelectOtherMBTI(boxHeight: boxHeight),
            Spacer(),
            Text(
              '다른 MBTI가 궁금하다면?',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: screenHeight * 0.025,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.0),
            FindTripMBTI(boxHeight: boxHeight),
          ],
        ),
      ),
    );
  }
}
