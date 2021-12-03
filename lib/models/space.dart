import 'package:flutter/material.dart';

class Space {
  int id;
  String name;
  String imgUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.city,
    required this.country,
    required this.rating,
    required this.address,
    required this.mapUrl,
    required this.numberOfBedrooms,
    required this.numberOfCupboards,
    required this.numberOfKitchens,
    required this.phone,
    required this.photos,
  });

  factory Space.fromJson(Map<String, dynamic> json) {
    return Space(
      id: json["id"],
      name: json['name'],
      city: json['city'],
      country: json['county'],
      imgUrl: json['image_url'],
      price: json['price'],
      rating: json['rating'],
      address: json['address'],
      phone: json['phone'],
      photos: json['photos'],
      mapUrl: json['map_url'],
      numberOfKitchens: json['number_of_kitchens'],
      numberOfBedrooms: json['number_of_bedrooms'],
      numberOfCupboards: json['number_of_cupboards'],
    );
  }
}
