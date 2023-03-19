import 'package:flutter/material.dart';
import 'package:travelproject/screens/conversationscreen.dart';
import 'package:travelproject/screens/createpasswordscreen.dart';
import 'package:travelproject/screens/forgotpasswordscreen.dart';
import 'package:travelproject/screens/homescreen.dart';
import 'package:travelproject/screens/locationscreen.dart';
import 'package:travelproject/screens/loginscreen.dart';
import 'package:travelproject/screens/messagescreen.dart';
import 'package:travelproject/screens/notificationscreen.dart';
import 'package:travelproject/screens/onboardingscreen.dart';
import 'package:travelproject/screens/reviewscreen.dart';
import 'package:travelproject/screens/searchscreen.dart';
import 'package:travelproject/screens/signupscreen.dart';
import 'package:travelproject/screens/splashscreen.dart';
import 'package:travelproject/screens/terms_conditions_screen.dart';
import 'package:travelproject/screens/verificationscreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen' : (context) => SplashScreen(),
        '/onboardingscreen' : (context) => OnBoardingScreen(),
        '/homescreen' : (context) => HomeScreen(),
        '/messagescreen' : (context) => MessageScreen(),
        '/conversationscreen' : (context) => ConversationScreen(),
        '/searchscreen' : (context) => SearchScreen(),
        '/loginscreen' : (context) => LoginScreen(),
        '/signupscreen' : (context) => SignUpScreen(),
        '/forgotpasswordscreen' : (context) => ForgotPasswordScreen(),
        '/terms_conditions_screen' : (context) => TermsConditionsScreen(),
        '/notificationscreen' : (context) => NotificationScreen(),
        '/locationscreen' : (context) => LocationScreen(),
        '/reviewscreen' : (context) => ReviewScreen(),
        '/createpasswordscreen' : (context) => CreatePasswordScreen(),
        '/verificationscreen' : (context) => VerificationScreen(),
      },
    );
  }
}
