import 'package:flutter/material.dart';

class SelectOtherMBTI extends StatefulWidget {
  final double boxHeight;

  const SelectOtherMBTI({Key? key, required this.boxHeight}) : super(key: key);

  @override
  _SelectOtherMBTIState createState() => _SelectOtherMBTIState();
}

class _SelectOtherMBTIState extends State<SelectOtherMBTI> {
  int currentIndex = 0;

  final List<Map<String, String>> options = [
    {
      'image1': 'assets/nature.jpg',
      'label1': '한적한 자연',
      'image2': 'assets/city.jpg',
      'label2': '신나는 도시',
    },
    {
      'image1': 'assets/mountain.jpg',
      'label1': '산',
      'image2': 'assets/beach.jpg',
      'label2': '해변',
    },
    // 계속 추가 가능
  ];

  void nextOption() {
    setState(() {
      if (currentIndex < options.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0; // 처음으로 돌아가기
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double boxHeight = widget.boxHeight;

    return Scaffold(
      appBar: AppBar(
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
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color(0xFFF1F2F3),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '여행을 가고 싶은 곳은?',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: screenHeight * 0.03,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildOptionBox(context, options[currentIndex]['image1']!,
                      options[currentIndex]['label1']!, boxHeight),
                  SizedBox(width: 16.0),
                  _buildOptionBox(context, options[currentIndex]['image2']!,
                      options[currentIndex]['label2']!, boxHeight),
                ],
              ),
              SizedBox(height: 24.0),
              GestureDetector(
                onTap: nextOption,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.28),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    '다음',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontSize: screenHeight * 0.025,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionBox(
      BuildContext context, String imagePath, String label, double boxHeight) {
    return Container(
      height: boxHeight,
      width: boxHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(2, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: boxHeight * 0.5),
          SizedBox(height: 8.0),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Pretendard',
              fontSize: boxHeight * 0.12,
            ),
          ),
        ],
      ),
    );
  }
}
