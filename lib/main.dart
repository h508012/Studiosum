import 'package:bachelor/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:bachelor/screens/welcome_screen.dart';
import 'package:bachelor/screens/login_screen.dart';
import 'package:bachelor/screens/registration_screen.dart';
import 'package:bachelor/screens/home_screen.dart';
import 'package:bachelor/screens/create_screen.dart';
import 'package:bachelor/screens/search_screen.dart';
import 'package:bachelor/screens/profile_settings_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bachelor/screens/contact_screen.dart';
import 'package:bachelor/screens/edit_profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Bachelor());
}

class Bachelor extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Creates routes for the diffrent screens
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        CreateScreen.id: (context) => CreateScreen(),
        SearchScreen.id: (context) => SearchScreen(),
        ProfileSettingsScreen.id: (context) => ProfileSettingsScreen(),
        ContactScreen.id: (context) => ContactScreen(),
        EditProfileScreen.id: (contect) => EditProfileScreen(),
        //AdScreen.id: (context) => AdScreen(),
      },
    );
  }
}
