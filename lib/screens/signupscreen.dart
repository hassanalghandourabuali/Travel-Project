import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TapGestureRecognizer _tapGestureRecognizer;
  bool _forcheck = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = forsignup;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tapGestureRecognizer.dispose();
  }

  @override
  void forsignup() {
    Navigator.pushReplacementNamed(context, '/loginscreen');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 68,
              ),
              Text(
                'Let’s Get Started',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Create an new account',
                style: GoogleFonts.poppins(
                    color: Color(0xff9098B1), fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 28,
              ),
              Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Full Name',
                      style: GoogleFonts.roboto(
                          color: Color(0xff000000), fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Full Name must contain 8 letters at least';
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(FontAwesomeIcons.user,size: 18,),
                        prefixIconColor: Color(0xff9098B1),
                        hintText: 'Ex.Hassan Alghandour ',
                        hintStyle: GoogleFonts.roboto(color: Color(0xff9098B1)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff40bfff),
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 0.5, color: Color(0xff787676)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Phone Number',
                      style: GoogleFonts.roboto(
                          color: Color(0xff000000), fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Full Name must contain 8 letters at least';
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_iphone,size: 24,),
                        prefixIconColor: Color(0xff9098B1),
                        hintText: '+972 59 2261812 ',
                        hintStyle: GoogleFonts.roboto(color: Color(0xff9098B1)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff40bfff),
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 0.5, color: Color(0xff787676)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Email Address ',
                      style: GoogleFonts.roboto(
                          color: Color(0xff000000), fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email must contain @ in this field';
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        prefixIconColor: Color(0xff9098B1),
                        hintText: 'Hassan@gmail.com',
                        hintStyle: GoogleFonts.roboto(color: Color(0xff9098B1)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff40bfff),
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 0.5, color: Color(0xff787676)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Password',
                      style: GoogleFonts.roboto(
                          color: Color(0xff000000), fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                      },
                      obscuringCharacter: ('*'),
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        prefixIconColor: Color(0xff9098B1),
                        hintText: ('************'),
                        hintStyle: GoogleFonts.roboto(color: Color(0xff9098B1)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 0.5, color: Color(0xff787676)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Confirm Password',
                      style: GoogleFonts.roboto(
                          color: Color(0xff000000), fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                      },
                      obscuringCharacter: ('*'),
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        prefixIconColor: Color(0xff9098B1),
                        hintText: ('************'),
                        hintStyle: GoogleFonts.roboto(color: Color(0xff9098B1)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 0.5, color: Color(0xff787676)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    value: _forcheck,
                    onChanged: (value) {
                      setState(() {
                        _forcheck = value!;
                      });
                    },
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'I agree about conditions',
                            style: GoogleFonts.roboto(
                              color: Color(0xff9098B1),
                            ),
                          ),
                        ),
                        TextButton(onPressed: (){Navigator.pushReplacementNamed(context, '/terms_conditions_screen');}, child: Text('Terms & Condition',style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff716E6E),
                        ),))
                      ],
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/homescreen'),
                    child: Text(
                      'Login',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffEA6C66),
                        minimumSize: Size(357, 57),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'have an a account ? ',
                                style: GoogleFonts.roboto(
                                  color: Color(0xff9098B1),
                                ),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                recognizer: _tapGestureRecognizer,
                                text: 'Login',
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff716E6E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
