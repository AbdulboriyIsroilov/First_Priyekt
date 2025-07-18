import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<String> list = [
    "Today, 12 Sep",
    "Mon, 13 Sep",
    "Tue, 14 Sep",
    "We, 15 Sep",
    "Standings",
  ];
  int axcist = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          ...List.generate(list.length, (index) {
            return OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10.5),
                backgroundColor: Color(
                  axcist == index ? 0xFFFFFFFF : 0xFF282828,
                ),
                foregroundColor: Color(
                  axcist == index ? 0xFF2D2D2D : 0xFF8D8D8D,
                ),
                side: BorderSide(
                  color: Color(axcist == index ? 0xFFFFFFFF : 0xFF373737),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                axcist = index;
                setState(() {});
              },
              child: Text(
                list[index],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
