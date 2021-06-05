import 'package:travelui/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination(
      {this.imageUrl,
      this.city,
      this.country,
      this.description,
      this.activities});
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/roman.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9.00 am', '11.00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/roman.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9.00 am', '11.00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/roman.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9.00 am', '11.00 am'],
    rating: 5,
    price: 30,
  ),
];

List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/pato.jpg',
      city: 'Venice',
      country: 'Italy',
      description: 'We are here for a good time not a long time, you know',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/pato.jpg',
      city: 'Venice',
      country: 'Italy',
      description: 'We are here for a good time not a long time, you know',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/pato.jpg',
      city: 'Venice',
      country: 'Italy',
      description: 'We are here for a good time not a long time, you know',
      activities: activities),
];
