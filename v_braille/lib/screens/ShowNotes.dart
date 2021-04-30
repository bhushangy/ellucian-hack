import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_braille/util/SizeConfig.dart';

class ShowNotes extends StatefulWidget {
  @override
  _ShowNotesState createState() => _ShowNotesState();
}

class _ShowNotesState extends State<ShowNotes> {
  String brailleInput =
      'Water is very important for life on earth. Rivers, Glaciers and Lakes are sources of fresh water on earth. Seas and Oceans contain salt water.';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          'Notes',
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
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05),
            child: Text(
              brailleInput,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: SizeConfig.safeBlockHorizontal * 4.5),
            ),
          ),
        ],
      ),
    );
  }
}
