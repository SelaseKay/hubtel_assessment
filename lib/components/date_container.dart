import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({
    super.key,
     this.date =  "May 24, 2022",
  });

  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0,),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(13.0)),
          color: Color(0xFFE6EAED)),
          child: Text(date, style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.w800,
            color: const Color(0xFF9CABB8),
            fontSize: 10.0
          ),),
    );
  }
}
