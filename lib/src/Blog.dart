import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
                // physics: NeverScrollableScrollPhysics(),
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
                        "Check out my latest projects",
                        style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "My Projects",
                        style: GoogleFonts.poppins(
                            fontSize: 46.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 112.0,
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width > 1300
                              ? MediaQuery.of(context).size.width * 0.65
                              : MediaQuery.of(context).size.width > 1200
                                  ? MediaQuery.of(context).size.width * 0.75
                                  : MediaQuery.of(context).size.width * 0.85,
                          child: BootstrapRow(
                            height: 361,
                            children: [
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: Container(
                                  width: 470.0,
                                  child: BlogCard(
                                    image: "Asset/softwarercr.JPG",
                                    head: "software of asistance",
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: Container(
                                  width: 470.0,
                                  child: BlogCard(
                                    image: "Asset/intranetAmerica.JPG",
                                    head: "intranet",
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: Container(
                                  width: 470.0,
                                  child: BlogCard(
                                    image: "Asset/mywebpage.JPG",
                                    head: "My web page",
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: Container(
                                  width: 470.0,
                                  child: BlogCard(
                                    image: "Asset/WebPageMaderas.JPG",
                                    head: "Wep Page Maderas America S.A.C",
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: Container(
                                  width: 470.0,
                                  child: BlogCard(
                                    image: "Asset/WebSarango.JPG",
                                    head:
                                        "WEB PAGE SARANGO ABOGADOS Y CONSULTORES",
                                  ),
                                ),
                              ),
                            ],
                          ),
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

class BlogCard extends StatefulWidget {
  final String image;
  final String head;

  BlogCard({this.head, this.image});

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      height: 351 + 10.0,
      //color: Colors.red,
      width: 370,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.contain,
                ),
              ),
              height: 231,
              width: 370,
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Text(
                widget.head,
                maxLines: 2,
                style: GoogleFonts.poppins(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
