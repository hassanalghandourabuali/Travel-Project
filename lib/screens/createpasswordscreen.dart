import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/forgotpasswordscreen');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Create password ',
          style: GoogleFonts.roboto(
            color: Color(0xff000000),
            fontSize: 17,
            fontWeight: FontWeight.w500
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
                      'Create a new password ',
                      style: GoogleFonts.roboto(
                          color: Color(0xff000000),
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr\n, sed diam nonumy eirmod ',
                  style: GoogleFonts.roboto(
                      color: Color(0xff8B8B8B),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 1.5),
                ),
                SizedBox(
                  height: 32,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'New Password',
                      style: GoogleFonts.roboto(
                          color: Color(0xff000000), fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please password must containe letters and numbers';
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
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Confirm Password',
                      style: GoogleFonts.roboto(
                          color: Color(0xff000000), fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please password must containe letters and numbers';
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
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/verificationscreen'),
                    child: Text(
                      'Send',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffEA6C66),
                        minimumSize: Size(370, 57),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
