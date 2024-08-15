import 'package:flutter/material.dart';

class FindTripMBTI extends StatelessWidget {
  final double boxHeight;

  const FindTripMBTI({Key? key, required this.boxHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: boxHeight,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.grey.shade200,
        ),
        child: Center(
          child: Text(
            '자신의 MBTI를 먼저 등록하세요!',
            style: TextStyle(
              fontFamily: 'Pretendard',
              fontSize: boxHeight * 0.2,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
