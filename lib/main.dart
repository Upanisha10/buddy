
import 'package:buddy/cart_page.dart';
import 'package:buddy/firstscreen.dart';
import 'package:buddy/on_boarding.dart';
import 'package:buddy/petstore.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:buddy/home_page.dart';

final List<Map<dynamic, dynamic>> dogs = [
  {
    'Name': 'Max',
    'Age': '5 years',
    'Gender': 'Male',
    'Weight': '50 lbs',
    'Address': '1.0 km Away',
    'About': 'Max is a loyal and protective German Shepherd. He enjoys playing in the yard and is well-trained in basic obedience. Max is always ready for a game of tug-of-war or a belly rub.',
    'Owner': 'Jane Smith',
    'ReasonForGiving': 'Allergies in the family.',
    'url': 'https://i.natgeofe.com/n/5f35194b-af37-4f45-a14d-60925b280986/NationalGeographic_2731043_3x4.jpg',
    'ownurl':'https://i.pinimg.com/474x/1f/b8/0a/1fb80a951ed9a54681b7a1b3dbd011d8.jpg',
    'isClicked' : false,
  },
  {
    'Name': 'Daisy',
    'Age': '2 years',
    'Gender': 'Female',
    'Weight': '30 lbs',
    'Address': '2.5 kms Away',
    'About': 'Daisy is a sweet and gentle Labrador Retriever mix who loves swimming and chasing butterflies. She’s very affectionate and enjoys cuddling on the couch with her favorite humans.',
    'Owner': 'Mary Johnson',
    'ReasonForGiving': 'Change in work schedule, unable to provide enough attention.',
    'url': 'https://www.shutterstock.com/image-photo/happy-puppy-welsh-corgi-14-600nw-2270841247.jpg',
    'ownurl':'https://i.pinimg.com/474x/e1/9f/66/e19f66431962c2cc3438adb50eb40ecf.jpg',
    'isClicked' : false,
  },
  {
    'Name': 'Lucy',
    'Age': '6 years',
    'Gender': 'Female',
    'Weight': '20 lbs',
    'Address': '5.0 kms Away',
    'About': 'Lucy is a charming and elegant Poodle. She enjoys being pampered and loves her grooming sessions. Lucy is very intelligent and enjoys solving puzzle toys and learning new commands.',
    'Owner': 'Michael Brown',
    'ReasonForGiving': 'Relocation to a smaller apartment.',
    'url': 'https://ghk.h-cdn.co/assets/17/30/2048x3072/bernese-mountain-dog.jpg',
    'ownurl':'https://i.pinimg.com/474x/ae/15/e9/ae15e9995312536f5db1c5a76c49cf04.jpg',
    'isClicked' : false,
  },
];
final List<Map<dynamic, dynamic>> cats = [

  {
    'Name': 'Luna',
    'Age': '4 years',
    'Gender': 'Female',
    'Weight': '8 lbs',
    'Address': '2.0 kms Away',
    'About': 'Luna is a serene and affectionate Siamese cat. She enjoys lounging in sunny spots and having quiet, cozy naps. Luna is very vocal and loves to chat with her humans.',
    'Owner': 'Robert White',
    'ReasonForGiving': 'Moving abroad and unable to take Luna along.',
    'url': 'https://i.natgeofe.com/n/4cebbf38-5df4-4ed0-864a-4ebeb64d33a4/NationalGeographic_1468962.jpg',
    'ownurl':'https://i.pinimg.com/474x/a1/41/e0/a141e082ba8a9cd89548d4e4498bfc3d.jpg',
    'isClicked' : false,
  },
  {
    'Name': 'Shadow',
    'Age': '3 years',
    'Gender': 'Male',
    'Weight': '12 lbs',
    'Address': '3.6 kms Away',
    'About': 'Shadow is a sleek and mysterious black cat. He enjoys exploring his surroundings and hiding in unexpected places. Shadow is independent but appreciates a good scratch behind the ears.',
    'Owner': 'Susan Davis',
    'ReasonForGiving': 'New baby in the house, less time to care for the cat.',
    'url': 'https://static.scientificamerican.com/sciam/cache/file/32665E6F-8D90-4567-9769D59E11DB7F26_source.jpg?w=1200',
    'ownurl':'https://i.pinimg.com/474x/d9/64/df/d964df81606909463603c73bd065ed44.jpg',
    'isClicked' : false,
  },
  {
    'Name': 'Mittens',
    'Age': '5 years',
    'Gender': 'Female',
    'Weight': '9 lbs',
    'Address': '1.5 kms Away',
    'About': 'Mittens is a fluffy and gentle Ragdoll cat. She loves being held and snuggled, and her favorite activity is napping on her owner’s lap. Mittens is very friendly and gets along well with other pets.',
    'Owner': 'Emily Wilson',
    'ReasonForGiving': 'Owner is moving to a retirement home that does not allow pets.',
    'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdaR-66ZFKXaQLf0ULnXEB-yng2JbR4ijjww&s',
    'ownurl':'https://i.pinimg.com/564x/1f/7a/c3/1f7ac31324d658cf7549e015b93007c2.jpg',
    'isClicked' : false,
  },
];
final List<Map<dynamic, dynamic>> others = [
  {
    'Name': 'Goldie',
    'Age': '1 year',
    'Gender': 'Female',
    'Weight': '1 oz',
    'Address': '2.1 kms Away',
    'About': 'Goldie is a bright and lively goldfish who loves swimming through her castle and blowing bubbles. She enjoys a varied diet of flakes and occasional treats and is always curious about her surroundings.',
    'Owner': 'Chris Martinez',
    'ReasonForGiving': 'Owner is moving and unable to set up a proper tank in the new location.',
    'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq00uXqOWNZb9Hcc-i0DPZk7MRQRyzxNV-3g&s',
    'ownurl':'https://i.pinimg.com/474x/6d/16/1f/6d161f857df862de319c1c7ef04d5c79.jpg',
    'isClicked' : false,
  },
  {
    'Name': 'Sunny',
    'Age': '3 years',
    'Gender': 'Female',
    'Weight': '1 oz',
    'Address': '900 m Away',
    'About': 'Sunny is a cheerful and friendly canary. She loves singing and bringing joy to her household with her beautiful melodies. Sunny enjoys bathing and preening her feathers to keep them in perfect condition.',
    'Owner': 'Patricia Hernandez',
    'ReasonForGiving': 'Owner is traveling frequently and unable to care for Sunny.',
    'url': 'https://www.allaboutbirds.org/news/wp-content/uploads/2024/05/549985061-Rufous_Hummingbird-Nathan_Wall-FI-480x360.jpg',
    'ownurl':'https://i.pinimg.com/474x/6d/16/1f/6d161f857df862de319c1c7ef04d5c79.jpg',
    'isClicked' : false,
  },
  {
    'Name': 'Gizmo',
    'Age': '1 year',
    'Gender': 'Male',
    'Weight': '5 oz',
    'Address': '2.8 kms Away',
    'About': 'Gizmo is an inquisitive and active Chinese hamster. He enjoys climbing and running through his tunnels. Gizmo loves munching on fresh vegetables and is very affectionate with his human companions.',
    'Owner': 'Brian Lee',
    'ReasonForGiving': 'Owner has a new job with long hours and cannot provide enough care.',
    'url': 'https://d.newsweek.com/en/full/1944028/hamsters.jpg?w=1200&f=8a59a2019df80717996239bca5ef61da',
    'ownurl':'https://i.pinimg.com/474x/97/39/5e/97395e774f335d862cef7fc0e9b22956.jpg',
    'isClicked' : false,
  },
];
void main()
{
  //runApp(DevicePreview(builder: (context)=>MyApp()));
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Visby CF',
      ),
    );
  }
}
