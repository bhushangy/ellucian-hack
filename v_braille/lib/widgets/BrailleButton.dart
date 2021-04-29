import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_braille/util/SizeConfig.dart';

// ignore: must_be_immutable
class BrailleButton extends StatelessWidget {
  bool gate;

  BrailleButton(bool g) {
    this.gate = g;
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(), primary: gate ? Colors.black : Colors.grey),
        child: Container(
          width: SizeConfig.blockSizeHorizontal * 20,
          height: SizeConfig.blockSizeVertical * 20,
          alignment: Alignment.center,
          decoration: BoxDecoration(shape: BoxShape.circle),
        ),
        onPressed: () {
          if (gate) {
            HapticFeedback.lightImpact();
          }
        },
      ),
    );
  }
}
