import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    this.imagePath = "assets/images/momo.png",
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(13.0)),
        border: Border.all(
          color: const Color(0xFFE6EAED),
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "14:45PM",
            style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
                color: const Color(0xFF9CABB8)),
          ),
          const SizedBox(
            height: 11.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 39.0,
                width: 39.0,
                child: Image.asset(imagePath),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Emmanuel Rockson\nKwabena Uncle Ebo",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "024 123 4567",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 14.0,
                      color: const Color(0xFF9EADBA),
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const StatusContainer(),
                  Text(
                    "GHS 500",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 16.0,),
          Container(
            height: 1.0,
            color: const Color(0xFFE6EAED),
          ),
          const SizedBox(height: 25.0,),
          Row(
            children: [
              SizedBox(height: 25.0, width: 25.0, child: Image.asset("assets/images/personal.png"),)
            ],
          )
        ],
      ),
    );
  }
}

enum Status { failed, successful }

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    super.key,
    this.status = Status.successful,
  });

  final Status status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(13.0)),
        color: status == Status.successful
            ? const Color(0xFFDBF7E0)
            : const Color(0xFFFDB0AC),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 11.0,
            width: 11.0,
            child: Image.asset(status == Status.successful
                ? "assets/images/success.png"
                : "assets/images/failed.png"),
          ),
          const SizedBox(
            width: 4.0,
          ),
          Text(
            status == Status.successful ? "Successful" : "Failed",
            style: GoogleFonts.nunitoSans(
              fontSize: 10.0,
              color: status == Status.successful
                  ? const Color(0xFF70E083)
                  : const Color(0xFF99231D),
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
