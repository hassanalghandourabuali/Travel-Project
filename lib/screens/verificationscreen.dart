import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
          'Verification Code',
          style: GoogleFonts.roboto(
              color: Color(0xff000000),
              fontSize: 17,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Create a new password ',
                      style: GoogleFonts.roboto(
                          color: Color(0xff000000),
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr\n, sed diam nonumy eirmod ',
                  style: GoogleFonts.roboto(
                      color: Color(0xff8B8B8B),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 1.5),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 0.5, color: Color(0xff707070))),
                        child: TextFormField(
                          onSaved: (pin1){},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                              hintText: '0',
                              hintStyle: TextStyle(
                                  color: Colors.grey
                              ),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 0.5, color: Color(0xff707070))),
                        child: TextFormField(
                          onSaved: (pin2){},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                              hintText: '0',
                              hintStyle: TextStyle(
                                  color: Colors.grey
                              ),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 0.5, color: Color(0xff707070))),
                        child: TextFormField(
                          onSaved: (pin3){},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                              hintText: '0',
                              hintStyle: TextStyle(
                                  color: Colors.grey
                              ),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 0.5, color: Color(0xff707070))),
                        child: TextFormField(
                          onSaved: (pin4){},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            hintText: '0',
                            hintStyle: TextStyle(
                              color: Colors.grey
                            ),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '00:59',
                      style: GoogleFonts.roboto(
                          color: Color(0xff000000),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          height: 1.5),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend',
                        style: GoogleFonts.roboto(
                            color: Color(0xff8B8B8B),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            height: 1.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/homescreen'),
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
