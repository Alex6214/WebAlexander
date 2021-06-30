import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:webprofessional/Custom%20Widgets/ResumeCard.dart';
import 'package:webprofessional/Custom%20Widgets/ResumeCardExperience.dart';

class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  bool condition = false;
  double height = 0;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    setState(() {
      condition = false;
      height = 1500;
      Future.delayed(Duration(milliseconds: 400), () {
        setState(() {
          height = 0;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101010),
      body: Container(
        child: Stack(
          children: [
            SmoothScrollWeb(
              controller: controller,
              child: SingleChildScrollView(
                //physics: NeverScrollableScrollPhysics(),
                controller: controller,
                child: Center(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 25.0, right: 25.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                height = MediaQuery.of(context).size.height;
                              });
                              Future.delayed(Duration(milliseconds: 1000), () {
                                Navigator.pop(context);
                              });
                            },
                            child: Container(
                                child: Icon(
                              Icons.clear_rounded,
                              color: Colors.white,
                              size: 35.0,
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 43.0,
                      ),
                      Text(
                        "Check out my Resume",
                        style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Resume",
                        style: GoogleFonts.poppins(
                            fontSize: 46.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 112.0,
                      ),
                      MediaQuery.of(context).size.width > 950
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ResumeCard("Education"),
                                  ],
                                ),
                                SizedBox(
                                  width: 75.0,
                                ),
                                ResumeCardExpe("Experience"),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ResumeCard("Education"),
                                SizedBox(
                                  height: 35.0,
                                ),
                                ResumeCardExpe("Experience"),
                              ],
                            ),
                      SizedBox(
                        height: 120.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7 + 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: double.maxFinite,
                              child: Column(
                                children: [
                                  Text(
                                    "My level of knowledge in some tools",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.0,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "My Skills",
                                    style: GoogleFonts.poppins(
                                        fontSize: 46.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  MediaQuery.of(context).size.width > 950
                                      ? Row(
                                          children: [
                                            PercentItem(),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            PercentItem(),
                                          ],
                                        ),
                                  SizedBox(
                                    height: 100.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: condition ? null : 0,
                    bottom: condition ? 0 : null,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                      onEnd: () {
                        // setState(() {
                        //   condition ? condition = false : condition = true;
                        //   Future.delayed(Duration(milliseconds: 400), () {
                        //     height = 0;
                        //   });
                        // });
                      },
                      height: height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PercentItem extends StatefulWidget {
  @override
  _PercentItemState createState() => _PercentItemState();
}

class _PercentItemState extends State<PercentItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PercentCard(
            progress: 0.85,
            text: "HTML/CSS",
          ),
          PercentCard(
            progress: 0.8,
            text: "Web Design",
          ),
          PercentCard(
            progress: 0.95,
            text: "Dart / Flutter",
          ),
          PercentCard(
            progress: 0.95,
            text: "Firebase",
          ),
          PercentCard(
            progress: 0.95,
            text: "Help Desk",
          ),
          PercentCard(
            progress: 0.8,
            text: "Android",
          ),
          PercentCard(
            progress: 0.8,
            text: "Java / JSP",
          ),
          PercentCard(
            progress: 0.85,
            text: "office automation",
          ),
          PercentCard(
            progress: 0.9,
            text: "Git / GitHub",
          ),
          PercentCard(
            progress: 0.99,
            text: "Autodidact",
          ),
        ],
      ),
    );
  }
}

class PercentCard extends StatefulWidget {
  final double progress;
  final String text;
  PercentCard({this.progress, this.text});

  @override
  _PercentCardState createState() => _PercentCardState();
}

class _PercentCardState extends State<PercentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 950
          ? MediaQuery.of(context).size.width * 0.3 + 35
          : MediaQuery.of(context).size.width * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 45.0,
          ),
          Text(
            "   ${widget.text}",
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10.0,
          ),
          LinearPercentIndicator(
            percent: widget.progress,
            lineHeight: 8.0,
            animation: true,
            animationDuration: 1000,
            linearStrokeCap: LinearStrokeCap.butt,
            progressColor: Color(0xff009e66),
            backgroundColor: Color(0xff161616),
          ),
        ],
      ),
    );
  }
}
