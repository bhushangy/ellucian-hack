import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_braille/util/SizeConfig.dart';
import 'package:v_braille/util/Mappings2.dart';

// ignore: must_be_immutable
class BrailleButton2 extends StatelessWidget {
  String id;
  BrailleButton2({this.id});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(), primary: Colors.grey),
        child: Container(
          width: SizeConfig.blockSizeHorizontal * 20,
          height: SizeConfig.blockSizeVertical * 20,
          alignment: Alignment.center,
          decoration: BoxDecoration(shape: BoxShape.circle),
        ),
        onPressed: () {
          Mappings2.character += id;
          HapticFeedback.lightImpact();
        },
      ),
    );
  }
}
