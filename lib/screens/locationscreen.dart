import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
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
            'Location',
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
          currentIndex: 2,
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
        body: Container(
          width: 400,
          child: Image(image: AssetImage('images/map2.png'),fit: BoxFit.cover,),
        )
    );
  }
}
