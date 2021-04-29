import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_braille/screens/InsideModule.dart';
import 'package:v_braille/screens/NotesScreen.dart';
import 'package:v_braille/util/SizeConfig.dart';

class ModuleTile extends StatelessWidget {
  String name, label;
  ModuleTile({this.name, this.label});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: ListTile(
        leading: Icon(Icons.library_books_sharp),
        title: Text(
          name,
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: SizeConfig.safeBlockHorizontal * 3),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InsideModule(label: label, name: name)));
        },
      ),
    );
  }
}
