import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {Navigator.pushReplacementNamed(context, '/messagescreen');},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  image: AssetImage('images/user.png'),
                  width: 50,
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: RichText(
                  text: TextSpan(
                    text: 'Coache  Mohmmed ',
                    style: GoogleFonts.roboto(
                      color: Color(0xff000000),
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Container(
                  width: 241,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffEA6C66),
                  ),
                  child: Center(
                      child: Text(
                    'Lorem ipsum dolor sit amet, \nconsetetur sadipscing elitr, sed',
                    style: GoogleFonts.roboto(
                      color: Color(0xffffffff),
                      height: 1.5,
                      fontSize: 13,
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: AssetImage('images/user.png'),
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Container(
                        width: 241,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffE7E2DE),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,right: 8),
                              child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xffffffff),
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Color(0xff9E9B99),
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
                                  color: Color(0xff707070),
                                ),
                                width: 30,
                                height: 10,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  color: Color(0xffffffff),
                                ),
                                width: 30,
                                height: 10,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Container(
                  width: 120,
                  height: 120,
                  child: Center(
                      child: Image(image: AssetImage('images/sea1.png'),)),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: AssetImage('images/user.png'),
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Container(
                      width: 241,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffE7E2DE),
                      ),
                      child: Center(
                          child: Text(
                            'At vero eos et accusam et justo duo\n dolores et ea rebum. Stet clita kasd',
                            style: GoogleFonts.roboto(
                              color: Color(0xff676464),
                              height: 1.5,
                              fontSize: 13,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Container(
                  width: 190,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffEA6C66),
                  ),
                  child: Center(
                      child: Text(
                        'Lorem ipsum dolor sit amet,',
                        style: GoogleFonts.roboto(
                          color: Color(0xffffffff),
                          height: 1.5,
                          fontSize: 13,
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: AssetImage('images/user.png'),
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Container(
                      width: 241,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffE7E2DE),
                      ),
                      child: Center(
                          child: Text(
                            'invidunt ut labore et dolore magna \naliquyam erat, sed diam voluptua',
                            style: GoogleFonts.roboto(
                              color: Color(0xff676464),
                              height: 1.5,
                              fontSize: 13,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Container(
                  width: 120,
                  height: 120,
                  child: Center(
                      child: Image(image: AssetImage('images/sea2.png'),)),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: AssetImage('images/user.png'),
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Container(
                      child: Center(
                          child: Text(
                            'Typing...',
                            style: GoogleFonts.roboto(
                              color: Color(0xff707070),
                              height: 1.5,
                              fontSize: 13,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48,
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            FontAwesomeIcons.microphone,
                            size: 24,
                            color: Color(0xff000000).withOpacity(0.5),
                          ),
                          hintText: 'Send Message',
                          contentPadding: EdgeInsets.only(top: 8, left: 8),
                          hintStyle: GoogleFonts.roboto(
                            color: Color(0xffB8B8B8),
                            fontSize: 13,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0xffEA6C66).withOpacity(0.7),
                              ),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffEA6C66),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ],
          )),
        ));
  }
}
