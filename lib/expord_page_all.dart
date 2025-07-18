import 'package:flutter/material.dart';

class ExpordPageApp extends StatefulWidget {
  const ExpordPageApp({super.key});

  @override
  State<ExpordPageApp> createState() => _ExpordPageAppState();
}

class _ExpordPageAppState extends State<ExpordPageApp> {
  List<String> list1 = [
    "assets/image1.png",
    "assets/imageh1.png",
    "assets/image3.png",
    "assets/image4.png",
  ];
  int activ = 0;
  bool all = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 20,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.only(
                left: 14,
                top: 18,
                right: 14,
                bottom: 18,
              ),
              backgroundColor: Color(all ? 0xFF3F3F3F : 0xFF2A2A2A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            onPressed: () {
              all = !all;
              setState(() {});
            },
            child: Text(
              "ALL",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          ...List.generate(list1.length, (index) {
            return TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.only(
                  left: 11,
                  top: 11,
                  right: 11,
                  bottom: 13,
                ),
                backgroundColor: Color(
                  activ == index ? 0xFF3F3F3F : 0xFF2A2A2A,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              onPressed: () {
                activ = index;
                setState(() {});
              },
              child: Image.asset(
                list1[index],
                width: 25,
                height: 34,
                fit: BoxFit.cover,
              ),
            );
          }),
        ],
      ),
    );
  }
}
