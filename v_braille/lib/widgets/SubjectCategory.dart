import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_braille/screens/ModuleScreen.dart';
import 'package:v_braille/util/SizeConfig.dart';
import 'package:v_braille/screens/TextToBraille.dart';

class SubjectCategory extends StatefulWidget {
  String label, name;
  SubjectCategory({this.label, this.name});
  @override
  _SubjectCategoryState createState() => _SubjectCategoryState();
}

class _SubjectCategoryState extends State<SubjectCategory> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: () {
        if (widget.label == 'Text To Braille') {
          Navigator.pushNamed(context, '/texttobraille');
        } else if(widget.label == 'Braille To Text') {
          Navigator.pushNamed(context, '/brailletotext');
        }else{
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ModuleScreen(label: widget.label, name: widget.name)));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.indigo),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20,
              offset: Offset(
                5.0, // Move to right 10  horizontally
                10.0, // Move to bottom 10 Vertically
              ),
            )
          ],
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFEDEDED),
        ),
        height: SizeConfig.safeBlockVertical * 15,
        width: SizeConfig.safeBlockHorizontal * 45,
        child: Center(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              widget.name,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: SizeConfig.safeBlockHorizontal * 4.2),
            ),
          ),
        ),
      ),
    );
  }
}
