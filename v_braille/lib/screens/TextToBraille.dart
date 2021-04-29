import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:v_braille/screens/BraillePad.dart';
import 'package:v_braille/util/Mappings.dart';
import 'package:v_braille/util/SizeConfig.dart';

import '../util/Mappings.dart';

class TextToBraille extends StatefulWidget {
  @override
  _TextToBrailleState createState() => _TextToBrailleState();
}

class _TextToBrailleState extends State<TextToBraille> {
  //stt.SpeechToText _speech = stt.SpeechToText();

  //bool _isListening = false;
  //String _text = 'Press the button and start speaking';
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
    Mappings.count = 0;
    Mappings.brailleOutput = [];
    myController = new TextEditingController();
  }

  void dispose() {
    super.dispose();
    myController.dispose();
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
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          'V Braille',
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
                            text: '👉 Braille Input',
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
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                        offset: Offset(0, 10)),
                  ],
                ),
                child: Center(
                  child: TextField(
                    onChanged: (value) =>
                        brailleInput = value.toLowerCase().trim(),
                    style:
                        TextStyle(fontSize: SizeConfig.blockSizeHorizontal * 5),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    cursorColor: Colors.indigo,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.text_fields_sharp,
                        size: SizeConfig.safeBlockHorizontal * 6,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      hintText: "Enter Input Here",
                      hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: SizeConfig.safeBlockHorizontal * 4,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.075,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: SizeConfig.safeBlockHorizontal * 55,
                    //color: Colors.grey,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '👉 Select Braille Grade',
                              style: GoogleFonts.montserrat(
                                  fontSize: SizeConfig.safeBlockHorizontal * 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            TextSpan(
                              text: '.',
                              style: GoogleFonts.montserrat(
                                  fontSize: SizeConfig.safeBlockHorizontal * 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
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
                items:
                    brailleGrade.map<DropdownMenuItem<String>>((String value) {
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
              height: MediaQuery.of(context).size.height * 0.075,
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
                    if (brailleInput == '' || brailleInput == null) {
                      _showDialog("Input empty!", "Please provide input.");
                    } else if (initialGrade == 'English Grade 1') {
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
                      //print(brailleInput);
                    } else if (initialGrade == 'English Grade 2') {
                      var inputList = brailleInput.split(" ");
                      Mappings.count = 0;
                      Mappings.brailleOutput = [];
                      for (int i = 0; i < inputList.length; i++) {
                        //print(brailleInput[i]);
                        //print(mappings[brailleInput[i]]);
                        if (Mappings.gradeTwoMappings[inputList[i]] == null) {
                          continue;
                        }
                        Mappings.brailleOutput
                            .add(Mappings.gradeTwoMappings[inputList[i]]);

                        //Navigator.pushNamed(context, '/firstcharacter');
                      }
                      if (Mappings.brailleOutput.length == 0) {
                        _showDialog("Error!!",
                            "It seems some of the words you entered are not valid grade 2 braille mappings");
                        return;
                      }
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BraillePad(Mappings.brailleOutput[0]);
                      }));
                    }
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
            )
          ],
        ),
      ),
    );
  }

  // void _listen() async {
  //   if (!_isListening) {
  //     bool available = await _speech.initialize(
  //       onStatus: (val) => print('onStatus: $val'),
  //       onError: (val) => print('onError: $val'),
  //     );
  //     if (available) {
  //       setState(() => _isListening = true);
  //       _speech.listen(
  //         onResult: (val) => setState(() {
  //           _text = val.recognizedWords;
  //           myController.text = _text;
  //           print(_text);
  //         }),
  //       );
  //     }
  //   } else {
  //     setState(() => _isListening = false);
  //     _speech.stop();
  //   }
  // }
}
