import 'package:flutter/material.dart';
import 'package:flutter_airbnb_ui/models/property.dart';
import 'package:flutter_airbnb_ui/res.dart';

const propertyInfoItems = [
  InfoItem(
    icon: Res.mywork,
    text: 'My Work: UX Designer',
  ),
  InfoItem(
    icon: Res.perks,
    text: 'What makes my home unique : It’s fully automated',
  ),
  InfoItem(
    icon: Res.heart,
    text: 'I’m obsessed with: Technology',
  ),
  InfoItem(
    icon: Res.breakfast,
    text: 'What’s for breakfast: Oats and Fresh Fruit',
  ),
];

const listings = [
  Property(
    id: 1,
    coverUrl: 'assets/images/property1.png',
    hostAvatarUrl: 'assets/images/host1.png',
    hostName: 'Mariam',
    title: 'Stay with Mariam • Hosting For 2 years',
    address: 'Groveland, California',
    availability: 'Oct 23 - 28',
    rating: 4.79,
    reviewsCount: 200,
    price: 289,
    infoItems: propertyInfoItems,),
  Property(
      id: 2,
      coverUrl: 'assets/images/property2.png',
      hostAvatarUrl: 'assets/images/host2.png',
      hostName: 'Jane',
      title: 'Stay with Jane • Hosting For 2 years',
      address: 'Groveland, California',
      availability: 'Oct 23 - 28',
      rating: 4.5,
      reviewsCount: 400,
      price: 120,
      infoItems: propertyInfoItems),
  Property(
      id: 3,
      coverUrl: 'assets/images/property3.png',
      hostAvatarUrl: 'assets/images/person-1.jpeg',
      hostName: 'Josh',
      title: 'Stay with Josh • Hosting For 8 years',
      address: 'Groveland, California',
      availability: 'May 9 - 14',
      rating: 4.5,
      reviewsCount: 400,
      price: 200,
      infoItems: propertyInfoItems),
  Property(
      id: 4,
      coverUrl: 'assets/images/property4.png',
      hostAvatarUrl: 'assets/images/host4.png',
      hostName: 'Musa',
      title: 'Stay with Musa • Hosting For 8 years',
      address: 'Paris, France',
      availability: 'May 9 - 14',
      rating: 4.5,
      reviewsCount: 400,
      price: 120,
      infoItems: propertyInfoItems),
];
