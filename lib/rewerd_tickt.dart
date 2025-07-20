import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewerdTickt extends StatelessWidget {
  const RewerdTickt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1F1F),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFFD3D3D3),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Reward",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Color(0xFFEAEAEA),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 21.7, right: 16),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/reward.png",
                    width: 358.w,
                    height: 165.h,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 22,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          Text(
                            "1 Ticket Streaming",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFEAEAEA),
                            ),
                          ),
                          Text(
                            "1000 Points",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFEAEAEA),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 19,
                        children: [
                          Text(
                            "Match selected",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8D8D8D),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFFFFFFFF).withValues(alpha: 0.06),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side: BorderSide(color: Color(0xFFFFFFFF).withValues(alpha: 0.14))
                            ),
                            onPressed: () {},
                            child: Row(
                              spacing: 7,
                              children: [
                                Text(
                                  "Select match:",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFDDDDDD),
                                  ),
                                ),
                                Icon(Icons.arrow_downward,color: Color(0xFFD3D3D3),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Divider(color: Color(0xFF343434),),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 21.7, right: 16),
              child: Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Terms & Conditions",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFFEAEAEA),),),
                  Text("Leeds were so impressive on their return to the top flight last term, picking up 59 points from 38 matches to claim ninth, just two points behind eighth-place Arsenal and three points behind seventh-place Tottenham Hotspur, and they also ended the campaign in excellent form.",
                    style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Color(0xFFDDDDDD),),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
