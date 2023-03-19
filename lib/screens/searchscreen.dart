import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/homescreen');
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'Search',
          style: GoogleFonts.roboto(
              color: Color(0xff000000),
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffffffff),
        type: BottomNavigationBarType.fixed,
        currentIndex: 4,
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
            children: [
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
              SizedBox(height: 16,),
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Chip(
                      label: Text(
                        'All',
                        style: GoogleFonts.roboto(
                            color: Color(0xffffffff),
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      backgroundColor: Color(0xffEA6C66),
                      padding: EdgeInsets.all(8),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Chip(
                      label: Text(
                        'Hotel',
                        style: GoogleFonts.roboto(
                            color: Color(0xff000000),
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      backgroundColor: Colors.transparent,
                      padding: EdgeInsets.all(8),
                      side: BorderSide(width: 0.5,color: Color(0xff707070)),
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Resturent',
                      style: GoogleFonts.roboto(
                          color: Color(0xff000000),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    side: BorderSide(width: 0.5,color: Color(0xff707070)),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 400,
                    height: 200,
                    child: ClipRRect(
                      child: Image(
                        image: AssetImage('images/resturent1.png'),
                        color: Color(0xff707070).withOpacity(0.9),
                        colorBlendMode: BlendMode.modulate,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150,left: 50),
                    child: Text(
                      'Machdonles Resturent',
                      style: GoogleFonts.roboto(
                          color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 400,
                    height: 200,
                    child: ClipRRect(
                      child: Image(
                        image: AssetImage('images/resturent2.png'),
                        color: Color(0xff707070).withOpacity(0.9),
                        colorBlendMode: BlendMode.modulate,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160,left: 50),
                    child: Text(
                      'Marina Resturent',
                      style: GoogleFonts.roboto(
                          color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Stack(
                children: [
                  Container(
                    width: 400,
                    height: 200,
                    child: ClipRRect(
                      child: Image(
                        image: AssetImage('images/resturent3.png'),
                        color: Color(0xff707070).withOpacity(0.9),
                        colorBlendMode: BlendMode.modulate,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150,left: 50),
                    child: Text(
                      'Almadina Resturent',
                      style: GoogleFonts.roboto(
                          color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Stack(
                children: [
                  Container(
                    width: 400,
                    height: 200,
                    child: ClipRRect(
                      child: Image(
                        image: AssetImage('images/resturent4.png'),
                        color: Color(0xff707070).withOpacity(0.9),
                        colorBlendMode: BlendMode.modulate,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150,left: 50),
                    child: Text(
                      'Alshawa Resturent',
                      style: GoogleFonts.roboto(
                          color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}
