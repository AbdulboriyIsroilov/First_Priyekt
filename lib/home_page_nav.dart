import 'package:flutter/material.dart';

class HomePageNav extends StatelessWidget {
  const HomePageNav({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.title5,
    required this.title6,
    required this.title7,
    this.firsts = false,
  });

  final bool firsts;
  final String title1, title2, title3, title4, title5, title6, title7;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 173,
          height: 173,
          padding: const EdgeInsets.only(
            top: 10.5,
            right: 22,
            left: 12,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF353535),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              firsts
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/imageh1.png",
                          width: 18,
                          height: 18,
                        ),
                        Container(
                          width: 30,
                          height: 14,
                          decoration: BoxDecoration(
                            color: Color(0xFFFD0F00),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "LIVE",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 30,
                          height: 14,
                          decoration: BoxDecoration(
                            color: Color(0xFFFD0F00),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "LIVE",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
              SizedBox(height: 22.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                spacing: 10,
                children: [
                  Image.asset(
                    title1,
                    width: 26,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "VS",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFEAEAEA),
                    ),
                  ),
                  Image.asset(
                    title2,
                    width: 22,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title3,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  Text(
                    title4,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                  right: 32,
                  bottom: 23,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title5,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      title6,
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFEAEAEA),
                      ),
                    ),
                    Text(
                      title7,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
