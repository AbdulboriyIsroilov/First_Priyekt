import 'package:flutter/material.dart';
import 'package:flutter_8/expord_page.dart';
import 'package:flutter_8/navigator_revard.dart';
import 'package:flutter_svg/svg.dart';

import 'expord_page_all.dart';
import 'expord_page_time.dart';
import 'my_home_page.dart';

class NavigatorLive extends StatefulWidget {
  NavigatorLive({
    super.key,
  });

  @override
  State<NavigatorLive> createState() => _NavigatorLiveState();
}

class _NavigatorLiveState extends State<NavigatorLive> {
  int navigator = 2;

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
        child: SingleChildScrollView(
          child: Column(
            spacing: 18,
            children: [
              MyHome(),
              ExpordPageApp(),
              ExpordPageTime(),
            ],
          ),
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
          index == 3
              ? Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => NavigatorRevard()),
                )
              : Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => ExpordPage()),
                );
          setState(() {});
        },
        backgroundColor: Color(0xFF2E2E2E),
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
