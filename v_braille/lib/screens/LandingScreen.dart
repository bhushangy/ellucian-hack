import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/SizeConfig.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
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
        body: Center(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  //color: Colors.grey,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Braille Assist',
                      style: GoogleFonts.montserrat(
                          fontSize: SizeConfig.safeBlockHorizontal * 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    SizeConfig.safeBlockHorizontal * 27,
                    SizeConfig.safeBlockVertical * 48.5,
                    0,
                    0),
                //color: Colors.grey,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'The Power Of Together...',
                    style: GoogleFonts.montserrat(
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo),
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
