import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/signupscreen');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Terms & Condition',
          style: GoogleFonts.roboto(
            color: Color(0xff000000),
            fontSize: 17,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image(
                image: AssetImage('images/true.png'),
              ),
              SizedBox(height: 40,),
              Text(
                'These is terms and conditions you must read it',
                style: GoogleFonts.roboto(
                    color: Color(0xff676464),
                    height: 1.5,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 16,),
              Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr\n,'
                ' sed diam nonumy eirmod tempor invidunt ut labore et\n'
                ' dolore magna aliquyam erat, sed diam voluptua. At vero'
                ' \neos et accusam et justo duo dolores et ea rebum.the'
                ' end of the day so you will provide this product for '
                'anotherthe people Stet clita kasdLorem ipsum dolor sit'
                ' amet in can, consetetur sadipscing elitr,are you sure'
                ' that you need to provide this product sed diam nonumy '
                'eirmod tempora  invidunt ut labore et dolore magna '
                'aliquyam erat, sed in diam voluptua. At vero eos et'
                ' accusam et justo duo that dolores et ea rebum. Stet'
                ' clita kasderat, sed diam that involuptua. At vero'
                ' eos et accusam et justo duo dolores et ea rebum. '
                'Stet clita kasderat, sed diam voluptua. At vero eos'
                ' et accusam et justo duo dolores et ea',
                style: GoogleFonts.roboto(
                  color: Color(0xff676464),
                  height: 2,
                  fontSize: 13,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/homescreen');
                      },
                      child: Text(
                        'Accept',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xffF3F3F3)),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffEA6C66),
                          minimumSize: Size(120, 48),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/homescreen');
                      },
                      child: Text('Decline',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff000000))),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        minimumSize: Size(120, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(width: 0.25,color: Color(0xffEA6C66))
                        ),
                      ),
                    ),
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
