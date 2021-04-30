import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_braille/screens/ShowNotes.dart';
import 'package:v_braille/util/SizeConfig.dart';

import '../util/Mappings.dart';
import 'BraillePad.dart';

class NotesScreen extends StatefulWidget {
  String name, label;
  NotesScreen({this.name, this.label});
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  static List<String> brailleGrade = [
    'English Grade 1',
    'English Grade 2',
    'English Grade 3',
  ];
  String brailleInput =
      'water is very important for life on earth. rivers, glaciers and lakes are sources of fresh water on earth. seas and oceans contain salt water.';
  String initialGrade = brailleGrade[0];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05),
                  child: Text(
                    '👉 Select Braille Grade.',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: SizeConfig.safeBlockHorizontal * 5.5),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: DropdownButton<String>(
                  elevation: 2,
                  value: initialGrade,
                  icon: Icon(Icons.arrow_drop_down_circle),
                  iconSize: SizeConfig.safeBlockHorizontal * 6,
                  onChanged: (String newValue) async {
                    setState(() {
                      initialGrade = newValue;
                      //print(buildhome.whichConstituency);
                    });
                  },
                  items: brailleGrade
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: SizeConfig.safeBlockHorizontal * 4.2,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: Container(
                  width: SizeConfig.safeBlockHorizontal * 90,
                  height: SizeConfig.safeBlockVertical * 7,
                  child: InkWell(
                    onTap: () {
                      Mappings.count = 0;
                      Mappings.brailleOutput = [];
                      for (int i = 0; i < brailleInput.length; i++) {
                        //print(brailleInput[i]);
                        //print(mappings[brailleInput[i]]);
                        if (Mappings.mappings[brailleInput[i]] == null) {
                          continue;
                        }
                        Mappings.brailleOutput
                            .add(Mappings.mappings[brailleInput[i]]);
                      }
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BraillePad(Mappings.brailleOutput[0]);
                      }));
                    },
                    child: Material(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(30.0),
                      shadowColor: Colors.indigo,
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'Convert To Braille',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: Text(
                  '👉 Read Pdf Here.',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: SizeConfig.safeBlockHorizontal * 5.5),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: Container(
                  width: SizeConfig.safeBlockHorizontal * 90,
                  height: SizeConfig.safeBlockVertical * 7,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ShowNotes();
                      }));
                    },
                    child: Material(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(30.0),
                      shadowColor: Colors.indigo,
                      elevation: 5.0,
                      child: Center(
                        child: Text(
                          'Read Pdf',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
