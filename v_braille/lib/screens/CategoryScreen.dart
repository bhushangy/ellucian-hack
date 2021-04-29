import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_braille/util/SizeConfig.dart';
import 'package:v_braille/widgets/SubjectCategory.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: Text(
            'Select Category',
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
        body: SingleChildScrollView(
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
                //width: SizeConfig.safeBlockHorizontal * 90,
                //height: SizeConfig.safeBlockHorizontal * 6.9,
                //color: Colors.grey,
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'What do you want to learn today 😊 ',
                        style: GoogleFonts.montserrat(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.safeBlockHorizontal * 2.5,
                        right: SizeConfig.safeBlockHorizontal * 2.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SubjectCategory(
                              label: 'Braille To Text',
                              name: 'Braille To Text 📑',
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 0.7,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal * 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SubjectCategory(
                              label: 'Text To Braille',
                              name: 'Text To Braille 💬',
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 0.7,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.safeBlockHorizontal * 2.5,
                        right: SizeConfig.safeBlockHorizontal * 2.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SubjectCategory(
                                label: 'Science', name: 'Science 🌡'),
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal * 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SubjectCategory(
                              label: 'English',
                              name: 'English 🆎',
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 0.7,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.safeBlockHorizontal * 2.5,
                        right: SizeConfig.safeBlockHorizontal * 2.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SubjectCategory(
                              label: 'Geography',
                              name: 'Geography 🌏',
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 0.7,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal * 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SubjectCategory(
                              label: 'Literature',
                              name: 'Literature ✒',
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 0.7,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.safeBlockHorizontal * 2.5,
                        right: SizeConfig.safeBlockHorizontal * 2.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SubjectCategory(
                              label: 'Geography',
                              name: 'Arts 🎆🎃',
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 0.7,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal * 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SubjectCategory(
                              label: 'Literature',
                              name: 'Sociology 👪',
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 0.7,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2.5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
