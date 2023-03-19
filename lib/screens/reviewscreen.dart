import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
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
          'Reviews',
          style: GoogleFonts.roboto(
            color: Color(0xff000000),
            fontWeight: FontWeight.w500,
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
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffF8D302),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffF8D302),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffF8D302),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffF8D302),
                    ),
                    Icon(
                      Icons.star_half,
                      color: Color(0xffF8D302),
                    ),
                  ],
                ),
                SizedBox(height: 24,),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Write Your Review',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        height: 1.5),
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  width: 343,
                  height: 175,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color(0xffC4C4C4),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 8,
                      minLines: 1,
                      decoration: InputDecoration(
                          hintText: 'write your review here.. ',
                          hintStyle: GoogleFonts.roboto(color: Color(0xff9098B1)),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: 32,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/homescreen'),
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
                        minimumSize: Size(357, 57),
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
