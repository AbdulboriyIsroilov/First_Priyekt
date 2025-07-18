import 'package:flutter/material.dart';

class NavigatorRevarTicketReedem extends StatefulWidget {
  const NavigatorRevarTicketReedem({
    super.key,
  });

  @override
  State<NavigatorRevarTicketReedem> createState() => _NavigatorRevarTicketReedemState();
}

class _NavigatorRevarTicketReedemState extends State<NavigatorRevarTicketReedem> {
  bool reedem = true;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Color(reedem ? 0xFF00A3B7 : 0xFF8D8D8D),
        foregroundColor: Color(reedem ? 0xFFFFFFFF : 0xFF353535),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
      ),
      onPressed: () {
        reedem = !reedem;
        setState(() {});
      },
      child: Text(
        "Reedem",
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
