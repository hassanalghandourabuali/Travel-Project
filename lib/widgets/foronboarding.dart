import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForOnBoarding extends StatelessWidget {
  const ForOnBoarding({
    Key? key,
    required this.image,
    required this.title1,
    required this.title2,
  }) : super(key: key);
  final String image;
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Image(image: AssetImage(image)),
          SizedBox(height: 30,),
          Text(title1,style: GoogleFonts.roboto(
            fontSize: 20,
            color: Color(0xffEA6C66),
          ),),
          SizedBox(height: 16,),
          Text(title2,style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color(0xff716E6E),
              height: 1.5
          ),textAlign: TextAlign.center,),
        ]
    );
  }
}
