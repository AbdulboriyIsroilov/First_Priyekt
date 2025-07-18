import 'package:flutter/material.dart';
import 'package:flutter_8/expord_page.dart';
import 'package:flutter_8/navigator_live.dart';
import 'package:flutter_8/navigator_revar_ticket.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NavigatorRevard extends StatefulWidget {
  const NavigatorRevard({super.key});

  @override
  State<NavigatorRevard> createState() => _NavigatorRevardState();
}

class _NavigatorRevardState extends State<NavigatorRevard> {
  int navigator = 3;
  List<List<Color>> ranglar1 = [
    [
      Color(0xFFFF8A00),
      Color(0xFFFAA543),
    ],
    [
      Color(0xFF00B448),
      Color(0xFF66FFA4),
    ]
  ];
  List<Map> list1 = [
    {
      "title1":"1",
      "title2":"Ticket Streaming",
      "title3":"1000 Points",
      "image1":"assets/ticket1.png"
    },
    {
      "title1":"7",
      "title2":"Days VIP Access",
      "title3":"4500 Points",
      "image1":"assets/ticket3.png"
    }
  ];
  List<List<Color>> ranglar2 = [
    [
      Color(0xFFFA258A),
      Color(0xFFFF77B8),
    ],
    [
      Color(0xFF3552FD),
      Color(0xFF8D9EFF),
    ]
  ];
  List<Map> list2 = [
    {
      "title1":"3",
      "title2":"Ticket Streaming",
      "title3":"2500 Points",
      "image1":"assets/ticket2.png"
    },
    {
      "title1":"14",
      "title2":"Days VIP Access",
      "title3":"8000 Points",
      "image1":"assets/ticket4.png"
    }
  ];
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
        padding: EdgeInsets.only(left: 16, right: 16, top: 22),
        child: Column(
          spacing: 28.7,
          children: [
            SizedBox(
              width: 358.w,
              height: 165.h,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/imageR1.png",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 16,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Points",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFEAEAEA),
                          ),
                        ),
                        Text(
                          "1240",
                          style: TextStyle(
                            fontSize: 37,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFFEAEAEA),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 39,
                    left: 220,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 115.w,
                        height: 29.h,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Collect Points",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF00A3B7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 101,
                    left: 22,
                    child: Container(
                      alignment: Alignment.center,
                      width: 315.w,
                      height: 37.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 0.25),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        "Redeem your points to get amazing reward",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Text(
                  "Available Gift",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEAEAEA),
                  ),
                ),
                Row(
                  spacing: 12,
                  children: [
                    Column(
                      spacing: 14,
                      children: [
                        ...List.generate(list1.length, (i){
                          return NavigatorRevarTicket(
                            title1: list1[i]["title1"],
                            title2: list1[i]["title2"],
                            title3: list1[i]["title3"],
                            image1: list1[i]["image1"],
                            rang1: ranglar1[i][0],
                            rang2: ranglar1[i][1],
                          );
                        })
                      ],
                    ),
                    Column(
                      spacing: 14,
                      children: [
                        ...List.generate(list1.length, (i){
                          return NavigatorRevarTicket(
                            title1: list2[i]["title1"],
                            title2: list2[i]["title2"],
                            title3: list2[i]["title3"],
                            image1: list2[i]["image1"],
                            rang1: ranglar2[i][0],
                            rang2: ranglar2[i][1],
                          );
                        })
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigator,
        indicatorColor: Colors.transparent,
        labelTextStyle: WidgetStatePropertyAll(
          TextStyle(color: Color(0xFF8D8D8D)),
        ),
        onDestinationSelected: (index) {
          navigator = index;
          index == 2
              ? Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => NavigatorLive()),
                )
              : Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => ExpordPage()),
                );
          setState(() {});
        },
        backgroundColor: Colors.transparent,
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(
              "assets/svg1.svg",
              colorFilter: ColorFilter.mode(
                Color(navigator == 0 ? 0xFFEAEAEA : 0xFF8D8D8D),
                BlendMode.srcIn,
              ),
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              "assets/svg2.svg",
              colorFilter: ColorFilter.mode(
                Color(navigator == 1 ? 0xFFEAEAEA : 0xFF8D8D8D),
                BlendMode.srcIn,
              ),
            ),
            label: "explore",
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              "assets/svg3.svg",
              colorFilter: ColorFilter.mode(
                Color(navigator == 2 ? 0xFFEAEAEA : 0xFF8D8D8D),
                BlendMode.srcIn,
              ),
            ),
            label: "Live",
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              "assets/svg4.svg",
              colorFilter: ColorFilter.mode(
                Color(navigator == 3 ? 0xFFEAEAEA : 0xFF8D8D8D),
                BlendMode.srcIn,
              ),
            ),
            label: "Reward",
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              "assets/svg5.svg",
              colorFilter: ColorFilter.mode(
                Color(navigator == 4 ? 0xFFEAEAEA : 0xFF8D8D8D),
                BlendMode.srcIn,
              ),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
