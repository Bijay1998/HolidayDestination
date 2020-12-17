import 'package:holiday_destination/model/activity.dart';

class Destination{
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity>activities =[
  Activity(
    imageUrl: 'assets/images/hiw.PNG',
    name: 'Bethanchwok',
    type: 'Sightseeing Tour',
    startTime:['9:00 am', '10:00 am'],
    rating: 5,
    price: 30,
  ),
  
  

  

  Activity(
    imageUrl: 'assets/images/swayambhunath.jpg',
    name: 'Swayambhunath',
    type: 'Sighting tour',
    startTime: ['2', '3'],
    rating: 5,
    price: 40,
  ),
  Activity(
    imageUrl: 'assets/images/pashupatinath.jpeg',
    name: 'Pashupatinath',
    type: 'Sighting tour',
    startTime: ['2', '3'],
    rating: 5,
    price: 40,
  ),
];

List<Destination> destinations =[
  Destination(
    imageUrl:'assets/images/hiw.PNG',
    city: 'Kavre',
    country: 'Nepal',
    description: 'This is the one of the highest place of mahabharat range.',
    activities: activities,
    ),

   
    
    Destination(
      imageUrl: 'assets/images/boudhanath.jpg',
      city: 'Kathmandu',
      country: 'Nepal',
      description: 'This is the holy place for Buddhist.',
      activities: activities,
    ),
    Destination(
      imageUrl: 'assets/images/pashupatinath.jpeg',
      city: 'Kathmandu',
      country: 'Nepal',
      description: 'This is the holy place for Hindu too.',
      activities: activities,
    ),
   
];