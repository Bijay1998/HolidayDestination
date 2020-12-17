import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:holiday_destination/widgets/destination_finder.dart';

class TabBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [                
                Tab(                  
                  text: 'Weather',
                  icon: Icon(FontAwesomeIcons.moon),),
                Tab(
                  text: 'Cost',
                  icon: Icon(FontAwesomeIcons.dollarSign)),
                Tab(
                  text: 'LogIn',
                  icon: Icon(Icons.login)),
                Tab(
                  text: 'SignIn',
                  icon: Icon(FontAwesomeIcons.signInAlt)),
              ]
            ),
            title: Text('Create Plan'),
          ),
          body: TabBarView(
            children: [
              Icon(FontAwesomeIcons.moon),
              Icon(FontAwesomeIcons.dollarSign),
              Icon(Icons.login),
              Icon(Icons.logout),
            ]
          ), 
          
        ),
      ),
      
      
    );
    DestinationFinder();
    
  }
}

