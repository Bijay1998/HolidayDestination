import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:holiday_destination/model/destination.dart';


class DestinationPlan extends StatefulWidget {
  final Destination destination;

  DestinationPlan({this.destination});
  @override
  _DestinationPlanState createState() => _DestinationPlanState();
}

class _DestinationPlanState extends State<DestinationPlan> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons=[
    FontAwesomeIcons.moon,
    FontAwesomeIcons.dollarSign,
    FontAwesomeIcons.signInAlt,
    Icons.logout,
  ];
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }
  Widget _buildIcon(int index) {
    context: context;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
              
        ),
        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Plan')),
      body: Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),),
          Stack(
            children: <Widget>[
              Container(
                height: 200,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage(widget.destination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context),
                    ),
                    
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.destination.city,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.white70,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          widget.destination.country,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 25.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              GestureDetector(
                              child: Container(
                  
                  
                      alignment: Alignment.center,
                      height: 40,
                      width: 200,
                      color: Colors.blueAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Start Date'
                          ),                
                          Icon(Icons.arrow_forward),                
                          Text(
                            'End Date'
                          ),
                          Icon(Icons.calendar_today)
                          
                        ],
                        
                      ),
                    ),
                    onTap: () async {
  DateTimeRange picked = await showDateRangePicker(
    context: context,
    firstDate: DateTime(DateTime.now().year - 5),
    lastDate: DateTime(DateTime.now().year + 5),
    initialDateRange: DateTimeRange(
      end: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day + 13),
      start: DateTime.now(),
    ),
  );
  print(picked);
}
              ),
              Container(
                
                      
                      child: Icon(
                        Icons.favorite_outline,
                        size: 40,
                      ),
                      
                    ),
            ],
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            child: Text(
              'Start Planning'
              
            ),           
          ),
          
        ],
      ),
    );
  }
}