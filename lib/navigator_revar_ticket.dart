import 'package:flutter/material.dart';
import 'package:flutter_8/navigator_revar_ticket_reedem.dart';
import 'package:flutter_8/rewerd_tickt.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigatorRevarTicket extends StatefulWidget {
  const NavigatorRevarTicket({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.image1,
    required this.rang1,
    required this.rang2,
  });

  final String title1, title2, title3, image1;
  final Color rang1, rang2;

  @override
  State<NavigatorRevarTicket> createState() => _NavigatorRevarTicketState();
}

class _NavigatorRevarTicketState extends State<NavigatorRevarTicket> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => RewerdTickt())
        );
        setState(() {});
      },
      child: Column(
        children: [
          Container(
            width: 173.w,
            height: 98.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [widget.rang1, widget.rang2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 17,
                top: 12,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        widget.title1,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: Text(
                          widget.title2,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(widget.image1),
                ],
              ),
            ),
          ),
          Container(
            width: 173.w,
            height: 102.h,
            decoration: BoxDecoration(
              color: Color(0xFF353535),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Text(
                        widget.title3,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(
                            2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  NavigatorRevarTicketReedem(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
