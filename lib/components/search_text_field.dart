import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField(
      {super.key,
      required this.hint,
      this.iconColor = const Color(0xFF0E336A)});

  final String hint;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: TextFormField(
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: const Color(0xFF292929),
              fontWeight: FontWeight.normal,
            ),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: const BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          prefixIcon: const Padding(
            padding: EdgeInsetsDirectional.only(
              start: 8.0,
              end: 4.0,
            ),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
         
          fillColor: const Color(0xFFE6EAED),
          filled: true,
          hintText: hint,
          hintStyle: GoogleFonts.nunitoSans(
            fontSize: 14.0,
            color: const Color(0xFF9CABB8),
            fontWeight: FontWeight.normal,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 4.0,
          ),
        ),
      ),
    );
  }
}
