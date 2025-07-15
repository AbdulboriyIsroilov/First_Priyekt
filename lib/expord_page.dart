import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'expord_page_time.dart';
import 'expord_page_all.dart';
import 'my_home_page.dart';

class ExpordPage extends StatelessWidget {
  ExpordPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E1E),
        title: Text(
          "NowTV",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22,
            color: Color(0xFFEAEAEA),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/Frame.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/bx.svg"),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.0, top: 9, right: 16),
        child: Column(
          spacing: 18,
          children: [
            MyHome(),
            ExpordPageApp(),
            ExpordPageTime(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //   Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (context) => HomeNew(),
      //     ),
      //   );
      // }),
    );
  }
}