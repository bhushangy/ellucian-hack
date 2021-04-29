import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../util/Mappings.dart';
import '../util/Mappings2.dart';
import '../util/Mappings.dart';
import '../util/SizeConfig.dart';
import '../screens/BraillePad2.dart';

class BrailleToText extends StatefulWidget {
  @override
  _BrailleToTextState createState() => _BrailleToTextState();
}

class _BrailleToTextState extends State<BrailleToText> {
  String description;
  TextEditingController myController;
  String brailleInput;
  static List<String> brailleGrade = [
    'English Grade 1',
    'English Grade 2',
    'English Grade 3',
  ];
  String initialGrade = brailleGrade[0];

  @override
  void initState() {
    super.initState();
    Mappings2.count = 0;
    Mappings2.output = [];
    myController = new TextEditingController();
    myController.text = Mappings2.output.join();
  }

  void dispose() {
    super.dispose();
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          'Braille To Text',
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
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: SizeConfig.safeBlockHorizontal * 40,
                    //color: Colors.grey,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: '👉 Braille Output',
                            style: GoogleFonts.montserrat(
                                fontSize: SizeConfig.safeBlockHorizontal * 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: '.',
                            style: GoogleFonts.montserrat(
                                fontSize: SizeConfig.safeBlockHorizontal * 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.indigo),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.095,
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
                    Mappings2.count = 0;
                    Mappings2.output = [];
                    Mappings2.character = '';
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BraillePad2();
                    }));
                  },
                  child: Material(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(30.0),
                    shadowColor: Colors.indigo,
                    elevation: 5.0,
                    child: Center(
                      child: Text(
                        'Enter Braille Input',
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
    );
  }
}
