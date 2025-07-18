import 'package:flutter/material.dart';
import 'package:flutter_8/live_time_tap_bar.dart';
import 'package:flutter_8/navigator_live.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'live_time_state_title.dart';

class LiveTime extends StatefulWidget {
  final bool livetims;

  const LiveTime({super.key, required this.livetims});

  @override
  State<LiveTime> createState() => _LiveTimeState();
}

class _LiveTimeState extends State<LiveTime> {
  List<String> list = ["Description", "Match Schedule"];
  bool bottum1 = false, bottum2 = false;
  int activ = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242424),
      body: Padding(
        padding: EdgeInsets.only(top: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 222,
              child: widget.livetims
                  ? Stack(
                      children: [
                        Image.asset(
                          "assets/video2.png",
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 8,
                          left: 10,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => NavigatorLive(),
                                ),
                              );
                            },
                            icon: SvgPicture.asset("assets/vidsvg.svg"),
                          ),
                        ),
                        Positioned(
                          top: 12.22,
                          left: 296,
                          child: Row(
                            spacing: 30,
                            children: [
                              SvgPicture.asset("assets/svgs1.svg"),
                              SvgPicture.asset("assets/svgs2.svg"),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 80.45,
                          left: 164.32,
                          child: Image.asset(
                            "assets/vidcenter.png",
                            width: 62.4,
                            height: 61.1,
                          ),
                        ),
                        Positioned(
                          top: 186.36,
                          left: 20.8,
                          child: Container(
                            width: 34,
                            height: 17,
                            decoration: BoxDecoration(
                              color: Color(0xFFFD0F00),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "LIVE",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 185.3,
                          left: 296,
                          child: Row(
                            spacing: 30.84,
                            children: [
                              SvgPicture.asset("assets/svgs4.svg"),
                              SvgPicture.asset("assets/svgs5.svg"),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Stack(
                      children: [
                        Image.asset(
                          "assets/video1.png",
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 8,
                          left: 10,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => NavigatorLive(),
                                ),
                              );
                            },
                            icon: SvgPicture.asset("assets/vidsvg.svg"),
                          ),
                        ),
                        Positioned(
                          top: 70,
                          left: 107,
                          child: Container(
                            width: 176,
                            height: 78,
                            decoration: BoxDecoration(
                              color: Color(0xFFDDDDDD).withValues(alpha: 0.9),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "This match will start in:",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFEAEAEA),
                                  ),
                                ),
                                Text(
                                  "22:19:32",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      widget.livetims
                          ? LiveTimeStateTitle(
                              title1: "Leeds United vs Liverpool",
                              title2: "134.433 Watching",
                              title3: "Premier League - Gameweek 23",
                            )
                          : LiveTimeStateTitle(
                              title1: "Sampdoria vs Inter Milan",
                              title2: "Tomorrow, 12 Sep  - 08.00 PM",
                              title3: "Seria A - Gameweek 12",
                            ),
                      widget.livetims
                          ? SizedBox()
                          : Row(
                              spacing: 19,
                              children: [
                                IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: bottum1
                                        ? Color(
                                            0xFFFFFFFF,
                                          ).withValues(alpha: 0.5)
                                        : Color(
                                            0xFFFFFFFF,
                                          ).withValues(alpha: 0.1),
                                  ),
                                  onPressed: () {
                                    bottum1 = !bottum1;
                                    setState(() {});
                                  },
                                  icon: SvgPicture.asset("assets/bx.svg"),
                                ),
                                IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: bottum2
                                        ? Color(
                                            0xFFFFFFFF,
                                          ).withValues(alpha: 0.5)
                                        : Color(
                                            0xFFFFFFFF,
                                          ).withValues(alpha: 0.1),
                                  ),
                                  onPressed: () {
                                    bottum2 = !bottum2;
                                    setState(() {});
                                  },
                                  icon: SvgPicture.asset("assets/svgs2.svg"),
                                ),
                              ],
                            ),
                      SizedBox(height: 15),
                      LiveMatchBottomSection(
                        hight: widget.livetims ? 485 : 437,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
