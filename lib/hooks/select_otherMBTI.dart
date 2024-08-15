import 'package:flutter/material.dart';

class SelectOtherMBTI extends StatelessWidget {
  final double boxHeight;

  const SelectOtherMBTI({Key? key, required this.boxHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildOptionBox(context, 'assets/nature.jpg', '한적한 자연'),
        SizedBox(width: 16.0),
        _buildOptionBox(context, 'assets/city.jpg', '신나는 도시'),
      ],
    );
  }

  Widget _buildOptionBox(BuildContext context, String imagePath, String label) {
    return Container(
      height: boxHeight,
      width: boxHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: boxHeight * 0.6),
          SizedBox(height: 8.0),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Pretendard',
              fontSize: boxHeight * 0.15,
            ),
          ),
        ],
      ),
    );
  }
}
