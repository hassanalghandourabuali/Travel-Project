import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/homescreen');
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Notifications',
            style: GoogleFonts.roboto(
              color: Color(0xff000000),
              fontSize: 17,
            ),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffffffff),
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
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
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffFCE9E8),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'Lorem ipsum dolor sit amet, consetetur ',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '20 min ago',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                ),
              ),
              onTap: (){Navigator.pushReplacementNamed(context, '/conversationscreen');},
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff716E6E).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'Sed diam nonumy eirmod tempor',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '40 min ago',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                ),
              ),
              onTap: (){Navigator.pushReplacementNamed(context, '/conversationscreen');},
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffFCE9E8),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'Accusam et justo duo dolores et ea',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '55 min ago',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                ),
              ),
              onTap: (){Navigator.pushReplacementNamed(context, '/conversationscreen');},
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff716E6E).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'Dolores et ea rebum. Stet clita kasd',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1 hour ago',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                ),
              ),
              onTap: (){Navigator.pushReplacementNamed(context, '/conversationscreen');},
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffFCE9E8),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'At vero eos et accusam et justo duo ',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '3 hour ago',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                ),
              ),
              onTap: (){Navigator.pushReplacementNamed(context, '/conversationscreen');},
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff716E6E).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'Magna aliquyam erat, sed diam voluptua',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1 day ago',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                ),
              ),
              onTap: (){Navigator.pushReplacementNamed(context, '/conversationscreen');},
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffFCE9E8),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'Tempor invidunt ut labore et dolore ',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '3 day ago',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                ),
              ),
              onTap: (){Navigator.pushReplacementNamed(context, '/conversationscreen');},
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff716E6E).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'Sadipscing elitr, sed diam nonumy eirmod',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1 week ago',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                ),
              ),
              onTap: (){Navigator.pushReplacementNamed(context, '/conversationscreen');},
            ),
            SizedBox(
              height: 16,
            ),

          ],
        ),
      ),
    ));
  }
}
