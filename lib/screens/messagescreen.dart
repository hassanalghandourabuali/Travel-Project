import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffffffff),
          type: BottomNavigationBarType.fixed,
          currentIndex: 3,
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
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                child: Text(
                  'All Message',
                  style: GoogleFonts.roboto(
                      color: Color(0xff000000),
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 48,
              width: 357,
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xffEA6C66).withOpacity(0.7),
                    ),
                    hintText: 'Search',
                    contentPadding: EdgeInsets.only(top: 8),
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
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffE7E2DE),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'Ali hassan',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sent Just Now',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                  trailing: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xffEA6C66),
                    child: Text(
                      '2',
                      style: GoogleFonts.roboto(
                          color: Color(0xffffffff),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
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
                    color: Color(0xffE7E2DE),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image(
                        image: AssetImage('images/person.png'),
                      ),
                      Positioned(
                        left: 40,
                          top: 37,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                        radius: 5,
                      ))
                    ],
                  ),
                  title: Text(
                    'Mohammed Alnajar',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sent Just Now',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        FontAwesomeIcons.checkDouble,
                        size: 16,color: Colors.grey,
                      )
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
                    color: Color(0xffE7E2DE),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'Khalil Redwan',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sent Just Now',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                  trailing: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xffEA6C66),
                    child: Text(
                      '8',
                      style: GoogleFonts.roboto(
                          color: Color(0xffffffff),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
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
                    color: Color(0xffE7E2DE),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image(
                        image: AssetImage('images/person.png'),
                      ),
                      Positioned(
                          left: 40,
                          top: 37,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 5,
                          ))
                    ],
                  ),
                  title: Text(
                    'Maher Khader',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sent Just Now',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        FontAwesomeIcons.checkDouble,
                        size: 16,color: Colors.grey,
                      )
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
                    color: Color(0xffE7E2DE),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'Adnan Majed',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sent Just Now',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                  trailing: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xffEA6C66),
                    child: Text(
                      '6',
                      style: GoogleFonts.roboto(
                          color: Color(0xffffffff),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
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
                    color: Color(0xffE7E2DE),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/person.png'),
                  ),
                  title: Text(
                    'Ameer Alnmir',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sent Just Now',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      // Icon(FontAwesomeIcons.checkDouble)
                    ],
                  ),
                  trailing: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xffEA6C66),
                    child: Text(
                      '1',
                      style: GoogleFonts.roboto(
                          color: Color(0xffffffff),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
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
                    color: Color(0xffE7E2DE),
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image(
                        image: AssetImage('images/person.png'),
                      ),
                      Positioned(
                          left: 40,
                          top: 37,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 5,
                          ))
                    ],
                  ),
                  title: Text(
                    'Othman Ahmed',
                    style: GoogleFonts.roboto(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sent Just Now',
                        style: GoogleFonts.roboto(
                            color: Color(0xff716E6E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        FontAwesomeIcons.checkDouble,
                        size: 16,color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              onTap: (){Navigator.pushReplacementNamed(context, '/conversationscreen');},
            ),
          ],
        ),
      ),
    ));
  }
}
