import 'package:flutter/material.dart';
import 'package:holiday_destination/services/authentication_service.dart';
import 'package:holiday_destination/widgets/destination_finder.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Home')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),

                child: Text(
                  'Holiday App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,

                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.notification_important),
                title: Text('Notification'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),

              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Language'),
              ),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text('Chat'),
              ),
              
                RaisedButton(
                color: Colors.blue,
                child: Text('Log Out'),  
                          
                shape: StadiumBorder(),
                onPressed: (){
                  context.read<AuthenticationService>().signOut();

                },    
                
                
                
                

              ),

              
            ],
          ),
        ),
        body: SafeArea(
          child: ListView(
            
            children: <Widget>[
             // mainAxisAlignment: MainAxisAlignment.spaceAround,
              RaisedButton(
              child: Text('Find Destination',               
              style: TextStyle(
                color: Colors.black26,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,              
              
              ),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DestinationFinder()));
              },
  

            ),
             RaisedButton(
              child: Text('My Info', 
              style: TextStyle(
                color: Colors.black26,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              
              ),),
              
            ),
            RaisedButton(
              child: Text('Maps', 
              style: TextStyle(
                color: Colors.black26,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              
              ),
              ),
              
              

            ),
            RaisedButton(
              child: Text('Post Destination', 
              style: TextStyle(
                color: Colors.black26,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              
              ),),
             

            ),
            ],
          ),

          


          ),        

          
          
        
      ),
     
    );
  }
  }
