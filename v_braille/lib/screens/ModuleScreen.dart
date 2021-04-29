import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_braille/util/SizeConfig.dart';
import 'package:v_braille/widgets/ModuleTiles.dart';

class ModuleScreen extends StatefulWidget {
  String label, name;
  ModuleScreen({this.label, this.name});
  @override
  _ModuleScreenState createState() => _ModuleScreenState();
}

class _ModuleScreenState extends State<ModuleScreen> {
  List<ModuleTile> moduleTiles = [
    ModuleTile(
      label: '',
      name: 'Module 1',
    ),
    ModuleTile(
      label: '',
      name: 'Module 2',
    ),
    ModuleTile(
      label: '',
      name: 'Module 4',
    ),
    ModuleTile(
      label: '',
      name: 'Module 5',
    ),
    ModuleTile(
      label: '',
      name: 'Module 6',
    ),
    ModuleTile(
      label: '',
      name: 'Module 7',
    ),
    ModuleTile(
      label: '',
      name: 'Module 8',
    ),
    ModuleTile(
      label: '',
      name: 'Module 9',
    ),
    ModuleTile(
      label: '',
      name: 'Module 10',
    ),
    ModuleTile(
      label: '',
      name: 'Module 11',
    ),
    ModuleTile(
      label: '',
      name: 'Module 12',
    ),
    ModuleTile(
      label: '',
      name: 'Module 13',
    ),
    ModuleTile(
      label: '',
      name: 'Module 14',
    )
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          'Select ' + widget.label + ' Module',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width * 0.04),
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                children: moduleTiles,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
