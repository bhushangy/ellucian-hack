import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/SizeConfig.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.indigo,
    ));
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          brightness: Brightness.dark,
          title: Text(
            'Braille Assist',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * 0.05),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: Text(
                  '👉 What is Braille Assist ❓',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: SizeConfig.safeBlockHorizontal * 5.5),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            '➡ Braille Assist is a mobile application that employs vibration as the means for reading Braille. \n \n',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: '➡ Through this app we aim to promote the  ',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: '" Power of Together 🤝" \n',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.indigo),
                      ), //

                      TextSpan(
                        text: 'in order to help us ',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Collaborate, ',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo),
                      ),
                      TextSpan(
                        text: 'Innovate ',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.indigo),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: ' Drive Success. ',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.075,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: Text(
                  '👉 Our Aim 🎯',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: SizeConfig.safeBlockHorizontal * 5.5),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '➡ Thrive Towards An Inclusive Society. \n',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '➡ Education For All. \n',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '➡ Knowledge For All. \n',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
