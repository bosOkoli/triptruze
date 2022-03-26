// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopDestinations {
  final Widget child;
  final Text place;
  final Text subPlace;
  final Text price;

  TopDestinations(
      {required this.child,
      required this.place,
      required this.subPlace,
      required this.price});
}

List<TopDestinations> topDestinations = [
  TopDestinations(
      child: Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/trips_pics/hiker7.jpg'),
                  fit: BoxFit.cover))),
      place: Text('Norway', style: GoogleFonts.robotoSlab(color: Colors.white)),
      subPlace: Text('banders',
          style: GoogleFonts.robotoSlab(
              color: const Color.fromARGB(255, 196, 195, 195), fontSize: 10)),
      price: Text('530', style: GoogleFonts.robotoSlab(color: Colors.white))),
  TopDestinations(
      child: Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/trips_pics/hiker8.jpg'),
                  fit: BoxFit.cover))),
      place: Text('Japan', style: GoogleFonts.robotoSlab(color: Colors.white)),
      subPlace: Text('Victoria',
          style: GoogleFonts.robotoSlab(
              color: const Color.fromARGB(255, 196, 195, 195), fontSize: 10)),
      price: Text('800', style: GoogleFonts.robotoSlab(color: Colors.white))),
  TopDestinations(
      child: Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/trips_pics/hiker9.jpg'),
                  fit: BoxFit.cover))),
      place:
          Text('Ireland', style: GoogleFonts.robotoSlab(color: Colors.white)),
      subPlace: Text('Island',
          style: GoogleFonts.robotoSlab(
              color: const Color.fromARGB(255, 196, 195, 195), fontSize: 10)),
      price: Text('680', style: GoogleFonts.robotoSlab(color: Colors.white)))
];
