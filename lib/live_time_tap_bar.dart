import 'package:flutter/material.dart';

class LiveMatchBottomSection extends StatefulWidget {
  const LiveMatchBottomSection({
    super.key,
    required this.hight,
  });

  final double hight;

  @override
  State<LiveMatchBottomSection> createState() => _LiveMatchBottomSectionState();
}

class _LiveMatchBottomSectionState extends State<LiveMatchBottomSection>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  List<String> list = [
    """Inter will face Roberto D’Aversa and his new look Sampdoria side on Sunday afternoon. Though only on one point so far this season, Sampdoria have provided two decent showings against strong competition in Sassuolo and AC Milan. 

They drew 0-0 away to Sassuolo then suffered a narrow 1-0 defeat at home to Milan. The Ligurian side also added a substantial striking presence to supplement Fabio Quagliarella in another veteran, Francesco Caputo...
""",
    """Leeds were so impressive on their return to the top flight last term, picking up 59 points from 38 matches to claim ninth, just two points behind eighth-place Arsenal and three points behind seventh-place Tottenham Hotspur, and they also ended the campaign in excellent form.

The Whites made a disappointing start to their 2021-22 season, though, as they suffered a 5-1 defeat at Manchester United on August 14; Marcelo Bielsa's side are unbeaten in all competitions since then but are still waiting for their first league victory of the campaign.

Indeed, they have shared the points with Everton and Burnley in their last two Premier League fixtures, which came either side of a 3-0 home success over Crewe Alexandra in the EFL Cup.

Leeds held Liverpool to a 1-1 draw when the two teams locked horns at Elland Road last term, while Bielsa's side were on the wrong end of a seven-goal thriller at Anfield on September 12, and it would not be a surprise if there were goals this weekend considering how both teams will approach the match.

The Whites will be slightly wary of the dreaded second-season syndrome, and Bielsa will be determined to put a league victory on the board as soon as possible, but a revitalised Liverpool are set to provide difficult opposition for the former League One outfit on Sunday afternoon.""",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 28,
          child: TabBar(
            controller: controller,
            indicatorColor: Color(0xFFEAEAEA),
            dividerHeight: 0.4,
            tabs: [
              Text(
                "Description",
                style: TextStyle(
                  color: Color(0xFFEAEAEA),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Match schedule",
                style: TextStyle(
                  color: Color(0xFFEAEAEA),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: widget.hight,
          child: TabBarView(
            controller: controller,
            children: [
              SingleChildScrollView(
                child: Text(
                  list[0],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Text(
                  list[1],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
