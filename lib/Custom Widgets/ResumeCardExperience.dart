import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeCardExpe extends StatefulWidget {
  final String head;
  ResumeCardExpe(this.head);

  @override
  _ResumeCardExpeState createState() => _ResumeCardExpeState();
}

class _ResumeCardExpeState extends State<ResumeCardExpe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.head,
            style: GoogleFonts.poppins(
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          SizedBox(
            height: 15.0,
          ),
          CustomCard(
            head: "Maderas America S.A.C",
            sub2:
                "Peruvian capital company with more than 15 years of experience in the commercialization of the timber industry and its derivatives.",
            sub: "Systems Analyst / 2021 - currently",
          ),
          Container(
            height: 1.5,
            width: MediaQuery.of(context).size.width > 950
                ? MediaQuery.of(context).size.width * 0.35
                : MediaQuery.of(context).size.width * 0.7,
            color: Colors.white,
          ),
          CustomCard(
            head: "Representaciones Comerciales Richard",
            sub2:
                "Company specialized in the commercialization of mattresses, foams and upholstery articles with headquarters in Villa el Salvador and Pucallpa.",
            sub: "Systems Analyst / 2016 - 2021",
          ),
          Container(
            height: 1.5,
            width: MediaQuery.of(context).size.width > 950
                ? MediaQuery.of(context).size.width * 0.35
                : MediaQuery.of(context).size.width * 0.7,
            color: Colors.white,
          ),
          CustomCard(
            head: "VIVA FM",
            sub2:
                "Successful radio station with 17 years of experience, pioneer in the Streaming world being the first Smart radio in Peru.",
            sub: "developer / 2020 - 2021",
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String head;
  final String sub;
  final String sub2;
  CustomCard({this.head, this.sub, this.sub2});

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width > 950
          ? MediaQuery.of(context).size.width * 0.35
          : MediaQuery.of(context).size.width * 0.7,
      color: Color(0xff161616),
      child: Row(
        children: [
          Container(
            width: 50,
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: 2,
                  color: Color(0xff009e66),
                ),
                Positioned(
                  top: 50.0,
                  left: 1,
                  child: Container(
                    height: 20.0,
                    width: 25.0,
                    color: Color(0xff009e66),
                  ),
                ),
                Positioned(
                  top: 53,
                  left: 19.5,
                  child: Transform.rotate(
                    angle: 45 * math.pi / 180,
                    child: Container(
                      height: 14.0,
                      width: 14.0,
                      color: Color(0xff009e66),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width > 950
                ? MediaQuery.of(context).size.width * 0.35 - 60
                : MediaQuery.of(context).size.width * 0.7 - 65,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45,
                ),
                Text(
                  widget.head,
                  style:
                      GoogleFonts.poppins(fontSize: 21.0, color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.sub,
                  style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.white70,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  widget.sub2,
                  style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.white70,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
