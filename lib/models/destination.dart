import 'package:fluttertravels/models/activity.dart';

class Destination {
  String city;
  String country;
  String imageUrl;
  String description;
  List<Activity> activities;

  Destination(
      {this.city,
      this.country,
      this.imageUrl,
      this.description,
      this.activities});
}

List<Activity> activities = [
  Activity(
    imageUrl: "assets/images/nairobi.jpg",
    name: "migian",
    type: "hotel",
    startTimes: ['8.00am', '5.00pm'],
    ratings: 5,
    price: 256,
  ),
  Activity(
    imageUrl: "assets/images/nairobi.jpg",
    name: "migian",
    type: "hotel",
    startTimes: ['8.00am', '5.00pm'],
    ratings: 5,
    price: 256,
  ),
  Activity(
    imageUrl: "assets/images/nairobi.jpg",
    name: "migian",
    type: "hotel",
    startTimes: ['8.00am', '5.00pm'],
    ratings: 5,
    price: 256,
  ),
  Activity(
    imageUrl: "assets/images/nairobi.jpg",
    name: "migian",
    type: "hotel",
    startTimes: ['8.00am', '5.00pm'],
    ratings: 5,
    price: 256,
  ),
  Activity(
    imageUrl: "assets/images/nairobi.jpg",
    name: "migian",
    type: "hotel",
    startTimes: ['8.00am', '5.00pm'],
    ratings: 5,
    price: 256,
  ),
];

List<Destination> destinations = [
  Destination(
      city: 'Kisumu',
      country: 'kenya',
      imageUrl: 'assets/images/kisumu.jpg',
      description: 'Awesome climate',
      activities: activities),
  Destination(
      city: 'Nairobi',
      country: 'kenya',
      imageUrl: 'assets/images/nairobi.jpg',
      description: 'Nice Hotels and Parks',
      activities: activities),
  Destination(
      city: 'Mombasa',
      country: 'kenya',
      imageUrl: 'assets/images/mombasas.jpg',
      description: 'Diani Imeweza',
      activities: activities),
  Destination(
      city: 'Migori',
      country: 'kenya',
      imageUrl: 'assets/images/migori.jpg',
      description: 'Got Alila Nyale',
      activities: activities),
];
