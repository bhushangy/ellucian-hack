import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_braille/util/Mappings2.dart';
import 'package:v_braille/widgets/BrailleButton2.dart';
import 'package:v_braille/util/SizeConfig.dart';

class BraillePad2 extends StatefulWidget {
  @override
  _BraillePad2State createState() => _BraillePad2State();
}

class _BraillePad2State extends State<BraillePad2> {
  void _patternVibrateForward() {
    HapticFeedback.lightImpact();

    sleep(
      const Duration(milliseconds: 200),
    );

    HapticFeedback.lightImpact();

    sleep(
      const Duration(milliseconds: 200),
    );

    HapticFeedback.lightImpact();
  }

  void _patternVibrateBackward() {
    HapticFeedback.lightImpact();

    sleep(
      const Duration(milliseconds: 200),
    );

    HapticFeedback.lightImpact();

    sleep(
      const Duration(milliseconds: 200),
    );
  }

  void patternVibrateFirst() {
    HapticFeedback.lightImpact();

    sleep(
      const Duration(milliseconds: 200),
    );

    HapticFeedback.lightImpact();

    sleep(
      const Duration(milliseconds: 200),
    );

    HapticFeedback.lightImpact();

    sleep(
      const Duration(milliseconds: 200),
    );

    HapticFeedback.lightImpact();

    sleep(
      const Duration(milliseconds: 200),
    );
  }

  void _showDialog(
    String a,
    String b,
  ) {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          contentPadding: EdgeInsets.fromLTRB(
              SizeConfig.safeBlockHorizontal * 6.2,
              SizeConfig.safeBlockHorizontal * 2,
              SizeConfig.safeBlockHorizontal * 4,
              SizeConfig.safeBlockHorizontal * 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: new Text(
            a,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: SizeConfig.safeBlockHorizontal * 5),
          ),
          content: new Text(
            b,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.normal,
              fontSize: SizeConfig.safeBlockHorizontal * 4,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new TextButton(
              child: new Text(
                " OK",
                style:
                    TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 3.5),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                heroTag: "btn2",
                onPressed: () {
                  _patternVibrateBackward();
                  Mappings2.output.removeLast();
                  print(Mappings2.output);
                },
                child: Icon(Icons.navigate_before),
              ),
              FloatingActionButton(
                heroTag: "btn3",
                onPressed: () {
                  _showDialog('Braille To Text', Mappings2.output.join());

                  print(Mappings2.output.join());
                  // Navigator.popUntil(
                  //     context, ModalRoute.withName('/brailletotext'));
                },
                child: Icon(Icons.first_page),
              ),
              FloatingActionButton(
                heroTag: "btn1",
                onPressed: () {
                  _patternVibrateForward();
                  String temp = Mappings2.character;
                  Mappings2.character = '';
                  print(Mappings2.character);
                  print(Mappings2.output);
                  if (Mappings2.mappings[temp] == null) {
                  } else {
                    Mappings2.output.add(Mappings2.mappings[temp]);
                  }
                  //print(Mappings.brailleOutput.length);
                  //print('here');
                },
                child: Icon(Icons.navigate_next),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    BrailleButton2(id: '1'),
                    BrailleButton2(id: '2'),
                    BrailleButton2(id: '3'),
                  ],
                ),
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal * 20,
              ),
              Expanded(
                child: Column(
                  children: [
                    BrailleButton2(id: '4'),
                    BrailleButton2(id: '5'),
                    BrailleButton2(id: '6'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
