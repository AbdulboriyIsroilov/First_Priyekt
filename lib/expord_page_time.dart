import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'jonli_efir_widjet.dart';

class ExpordPageTime extends StatefulWidget {
  ExpordPageTime({super.key});

  @override
  State<ExpordPageTime> createState() => _ExpordPageTimeState();
}

class _ExpordPageTimeState extends State<ExpordPageTime> {
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
  int activ = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: index == 0 ? Radius.circular(12) : Radius.circular(2),
              bottom: index == list.length - 1
                  ? Radius.circular(12)
                  : Radius.circular(2),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LiveTime(
                        livetims: index == 0 || index == 1,
                      ),
                    ),
                  );
                },
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
                              Image.asset(
                                list[index][0],
                                width: 30,
                                height: 30,
                              ),
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
                              Image.asset(
                                list[index][2],
                                width: 30,
                                height: 30,
                              ),
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
                        child: (index == 0 || index == 1)
                            ? Container(
                                width: 41,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFD0F00),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "LIVE",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                width: 115,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Color(0xFF3D3D3D),
                                  borderRadius: BorderRadius.circular(34),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 2,
                                    horizontal: 6.5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "09.00 PM",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xFFEAEAEA),
                                        ),
                                      ),
                                      IconButton(
                                        style: IconButton.styleFrom(
                                          backgroundColor: Color(
                                            activ == index
                                                ? 0xFFD3D3D3
                                                : 0xFF353535,
                                          ),
                                          // foregroundColor: Color(activ==index ? 0xFF1E1E1E : 0xFFFFFFFF),
                                        ),
                                        onPressed: () {
                                          activ = index;
                                          setState(() {});
                                        },
                                        icon: SvgPicture.asset(
                                          "assets/Vector.svg",
                                          colorFilter: ColorFilter.mode(
                                            Color(
                                              activ == index
                                                  ? 0xFF353535
                                                  : 0xFFD3D3D3,
                                            ),
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
