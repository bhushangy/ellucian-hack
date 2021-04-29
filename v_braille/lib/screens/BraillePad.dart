import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_braille/util/Mappings.dart';
import 'package:v_braille/widgets/BrailleButton.dart';
import 'package:v_braille/util/SizeConfig.dart';

import '../util/Mappings.dart';
import '../util/Mappings.dart';

class BraillePad extends StatefulWidget {
  Map brailleOpt;
  BraillePad(Map bOpt) {
    this.brailleOpt = bOpt;
  }
  @override
  _BraillePadState createState() => _BraillePadState();
}

class _BraillePadState extends State<BraillePad> {
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
                  if (Mappings.count == 0) {
                    Navigator.popUntil(
                        context, ModalRoute.withName('/texttobraille'));
                    return;
                  }
                  _patternVibrateBackward();
                  Mappings.count--;
                  print(Mappings.count);
                  Navigator.pop(context);
                },
                child: Icon(Icons.navigate_before),
              ),
              FloatingActionButton(
                heroTag: "btn3",
                onPressed: () {
                  int temp = Mappings.count;
                  Mappings.count = 0;
                  int count = 0;
                  patternVibrateFirst();
                  Navigator.popUntil(context, (route) {
                    return count++ == temp;
                  });
                },
                child: Icon(Icons.first_page),
              ),
              FloatingActionButton(
                heroTag: "btn1",
                onPressed: () {
                  if (Mappings.count == Mappings.brailleOutput.length - 1) {
                    return;
                  }
                  _patternVibrateForward();
                  Mappings.count++;
                  print(Mappings.count);
                  //print(Mappings.brailleOutput.length);
                  //print('here');
                  print(Mappings.brailleOutput[Mappings.count]);

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BraillePad(Mappings.brailleOutput[Mappings.count]);
                  }));
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
                    BrailleButton(widget.brailleOpt['1']),
                    BrailleButton(widget.brailleOpt['2']),
                    BrailleButton(widget.brailleOpt['3'])
                  ],
                ),
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal * 20,
              ),
              Expanded(
                child: Column(
                  children: [
                    BrailleButton(widget.brailleOpt['4']),
                    BrailleButton(widget.brailleOpt['5']),
                    BrailleButton(widget.brailleOpt['6'])
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
