import 'package:flutter/material.dart';

class ExpordPageTime extends StatelessWidget {
  ExpordPageTime({super.key});

  List<List<String>> list = [
    [
      "assets/imagelist1.png",
      "Leeds United",
      "assets/imagelist2.png",
      "Liverpool",
    ],
    [
      "assets/imagelist1.png",
      "Leeds United",
      "assets/imagelist2.png",
      "Liverpool",
    ],
    [
      "assets/imagelist1.png",
      "Leeds United",
      "assets/imagelist2.png",
      "Liverpool",
    ],
    [
      "assets/imagelist1.png",
      "Leeds United",
      "assets/imagelist2.png",
      "Liverpool",
    ],
    [
      "assets/imagelist1.png",
      "Leeds United",
      "assets/imagelist2.png",
      "Liverpool",
    ],
    [
      "assets/imagelist1.png",
      "Leeds United",
      "assets/imagelist2.png",
      "Liverpool",
    ],
    [
      "assets/imagelist1.png",
      "Leeds United",
      "assets/imagelist2.png",
      "Liverpool",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 2,
        children: List.generate(list.length, (index) {
          return Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xFF353535),
              borderRadius: BorderRadius.vertical(
                top: index == 0 ? Radius.circular(12) : Radius.circular(2),
                bottom: index == list.length - 1
                    ? Radius.circular(12)
                    : Radius.circular(2),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          Image.asset(list[index][0], width: 30, height: 30),
                          Text(
                            list[index][1],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          Image.asset(list[index][2], width: 30, height: 30),
                          Text(
                            list[index][3],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFD0F00),
                        foregroundColor: Color(0xFFFFFFFF),
                        minimumSize: Size(0, 0),
                      ),
                      onPressed: () {},
                      child: Text(
                        "LIVE",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
