import 'package:flutter/material.dart';
import 'package:flutter_8/home_page_nav.dart';
import 'package:flutter_8/navigator_live.dart';
import 'package:flutter_8/navigator_revard.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpordPage extends StatefulWidget {
  ExpordPage({
    super.key,
  });

  @override
  State<ExpordPage> createState() => _ExpordPageState();
}

class _ExpordPageState extends State<ExpordPage> {
  int navigator = 0;

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
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Live Scores",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  "See All",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 15.5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 8,
                children: [
                  HomePageNav(
                    title1: "assets/imageh5.png",
                    title2: "assets/imageh4.png",
                    title3: "Leeds United",
                    title4: "Liverpool",
                    title5: "0",
                    title6: "83 mins",
                    title7: "2",
                    firsts: true,
                  ),
                  HomePageNav(
                    title1: "assets/imageh3.png",
                    title2: "assets/imageh2.png",
                    title3: "Espanyol",
                    title4: "Atl. Madrid",
                    title5: "1",
                    title6: "72 mins",
                    title7: "0",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar  (
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
                  MaterialPageRoute(builder: (context) => NavigatorRevard()),
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
