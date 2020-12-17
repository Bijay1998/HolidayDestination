import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:holiday_destination/screen/homepage.dart';
import 'signup.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // check whether user is logged in or not
    // if not logged in we display signup.dart
    // if logged in we display home.dart
    final firebaseUser = context.watch<User>();
    if(firebaseUser != null){
      return HomeScreen();
    }
    return Signup();
  }
}