import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelproject/widgets/foronboarding.dart';
import 'package:travelproject/widgets/indicators.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 800,
      child: Column(
        children: [
          SizedBox(height: 50),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Visibility(
              visible: _counter!=2,
              child: TextButton(
                onPressed: () {_pageController.animateToPage(2, duration: Duration(seconds: 2), curve: Curves.ease);},
                child: Text('Skip'),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Visibility(
              visible: _counter==2,
              child: TextButton(
                onPressed: () {Navigator.pushReplacementNamed(context, '/loginscreen');},
                child: Text('Start'),
              ),
            ),
          ),
          SizedBox(height: 50),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _counter = value;
                });
              },
              children: [
                ForOnBoarding(
                  image: 'images/img1.png',
                  title1: 'Choose The Country ',
                  title2: 'Choose the country you wanna to\n visit ',
                ),
                ForOnBoarding(
                  image: 'images/img2.png',
                  title1: 'Choose The Ticket',
                  title2: 'Choose the activity you want to do ',
                ),
                ForOnBoarding(
                  image: 'images/img3.png',
                  title1: 'Choose The Right Time',
                  title2: 'Choose the right time to travel around \nthe word ',
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Indicators(select: _counter == 0),
              Indicators(select: _counter == 1),
              Indicators(select: _counter == 2),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Visibility(
                visible: _counter != 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        _pageController.previousPage(
                            duration: Duration(seconds: 3), curve: Curves.ease);
                      },
                      child: Text(
                        'Previous',
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 72),
                child: Visibility(
                  visible: _counter != 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          _pageController.nextPage(
                              duration: Duration(seconds: 3),
                              curve: Curves.ease);
                        },
                        child: Text('Next',
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0xffF3F3F3))),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffEA6C66),
                            minimumSize: Size(120, 48),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _counter == 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/homescreen');
                      },
                      child: Text('Get Started',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xffF3F3F3))),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffEA6C66),
                          minimumSize: Size(120, 48),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
