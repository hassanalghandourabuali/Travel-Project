import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffffffff),
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/homescreen');
                  },
                  icon: Icon(Icons.home)),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, '/notificationscreen');
                  },
                  icon: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: CircleAvatar(
                          child: Text(
                            '3',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                          radius: 6,
                          backgroundColor: Colors.red,
                        ),
                        left: 14,
                      ),
                      Icon(Icons.notifications_none_sharp)
                    ],
                  )),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/locationscreen');
                  },
                  icon: Icon(Icons.location_on_outlined)),
              label: 'Location'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/messagescreen');
                  },
                  icon: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: CircleAvatar(
                          child: Text(
                            '6',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                          radius: 7,
                          backgroundColor: Colors.red,
                        ),
                        left: 18,
                      ),
                      Icon(Icons.message)
                    ],
                  )),
              label: 'Message'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/searchscreen');
                  },
                  icon: Icon(
                    FontAwesomeIcons.search,
                    size: 18,
                  )),
              label: 'Search'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
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
                          text: 'Hello ',
                          style: GoogleFonts.roboto(
                            color: Color(0xffEA6C66),
                            fontSize: 17,
                          ),
                          children: [
                            TextSpan(
                              text: 'Hassan \nAlghandour!',
                              style: GoogleFonts.roboto(
                                color: Color(0xff000000),
                                fontSize: 17,
                              ),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48,
                    width: 290,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffEA6C66).withOpacity(0.7),
                          ),
                          contentPadding: EdgeInsets.only(top: 8),
                          hintText: 'Search',
                          hintStyle: GoogleFonts.roboto(
                            color: Color(0xffB8B8B8),
                            fontSize: 17,
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
                      child: Image(
                        image: AssetImage('images/icon.png'),
                      )),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hotels',
                        style: GoogleFonts.roboto(
                            color: Color(0xff000000),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'More',
                          style: GoogleFonts.roboto(
                              color: Color(0xff707070),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 130,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        Container(
                          height: 180,
                          child: GridView(
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 20,
                              childAspectRatio: 300 / 250,
                            ),
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image(
                                        image: AssetImage('images/hotel3.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image(
                                        image: AssetImage('images/hotel2.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(14)),
                                      child: Image(
                                        image: AssetImage('images/hotel3.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                        height: 100,
                                        width: 220,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image(
                                        image: AssetImage('images/hotel2.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Restaurants ',
                        style: GoogleFonts.roboto(
                            color: Color(0xff000000),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'More',
                          style: GoogleFonts.roboto(
                              color: Color(0xff707070),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 130,
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          height: 180,
                          child: GridView(
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    crossAxisSpacing: 0,
                                    mainAxisSpacing: 20,
                                    childAspectRatio: 300 / 250),
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image(
                                        image: AssetImage(
                                            'images/resturentone.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(14)),
                                      child: Image(
                                        image: AssetImage(
                                            'images/resturenttow.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image(
                                        image: AssetImage(
                                            'images/resturentthree.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image(
                                        image: AssetImage(
                                            'images/resturentone.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nutrition Programs',
                        style: GoogleFonts.roboto(
                            color: Color(0xff000000),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'More',
                          style: GoogleFonts.roboto(
                              color: Color(0xff707070),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 130,
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          height: 180,
                          child: GridView(
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    crossAxisSpacing: 0,
                                    mainAxisSpacing: 20,
                                    childAspectRatio: 300 / 250),
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image(
                                        image:
                                            AssetImage('images/program1.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image(
                                        image:
                                            AssetImage('images/program2.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image(
                                        image:
                                            AssetImage('images/program3.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Image(
                                        image:
                                            AssetImage('images/program1.png'),
                                        color:
                                            Color(0xff707070).withOpacity(0.9),
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 70, left: 8),
                                    child: Text(
                                      'muscle tone exercise',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
