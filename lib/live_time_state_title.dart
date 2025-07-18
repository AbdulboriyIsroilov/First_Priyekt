import 'package:flutter/material.dart';

class LiveTimeStateTitle extends StatelessWidget {
  const LiveTimeStateTitle({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
  });

  final String title1, title2, title3;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 7,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title1,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFFEAEAEA),
          ),
        ),
        Text(
          title2,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Color(0xFFDDDDDD),
          ),
        ),
        Text(
          title3,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Color(0xFFDDDDDD),
          ),
        ),
      ],
    );
  }
}
