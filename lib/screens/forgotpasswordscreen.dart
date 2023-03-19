import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/loginscreen');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Forget Password',
          style: GoogleFonts.roboto(
            color: Color(0xff000000),
            fontSize: 17,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Rest Your Password',style: GoogleFonts.roboto(
                      color: Color(0xff676464),
                      fontSize: 19,
                      fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr\n, sed diam nonumy eirmod ',style: GoogleFonts.roboto(
                  color: Color(0xff8B8B8B),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,height: 1.5),

              ),
              SizedBox(height: 48,),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Email Address ',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000), fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
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
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/createpasswordscreen'),
                  child: Text(
                    'Continue',
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
              ),
            ],
          )
        ),
      ),
    );
  }
}
