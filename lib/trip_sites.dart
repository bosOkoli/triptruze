import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripSites {
  final ImageProvider image;
  final Widget child;
  final Text place;
  final Text duration;
  TripSites({
    required this.image,
    required this.child,
    required this.place,
    required this.duration,
  });
}

List<TripSites> tripSites = [
  TripSites(
      image: const AssetImage('assets/homescreen_pics/hiker3.jpg'),
      child: Container(
        height: 30,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 93, 116, 128).withOpacity(0.5)),
        child: Center(
          child: Text('530',
              style: GoogleFonts.robotoSlab(color: Colors.white, fontSize: 15)),
        ),
      ),
      place: Text(
        'Shimla Tracking Camp',
        style: GoogleFonts.robotoSlab(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 12,
            fontWeight: FontWeight.w700),
      ),
      duration: Text('8 days 7 nights',
          style: GoogleFonts.robotoSlab(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 10,
              fontWeight: FontWeight.w700))),
  TripSites(
      image: const AssetImage('assets/homescreen_pics/hiker5.jpg'),
      child: Container(
        height: 30,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 93, 116, 128).withOpacity(0.5)),
        child: Center(
          child: Text('800',
              style: GoogleFonts.robotoSlab(color: Colors.white, fontSize: 15)),
        ),
      ),
      place: Text(
        'Triptruze Hiking Mountain',
        style: GoogleFonts.robotoSlab(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 12,
            fontWeight: FontWeight.w700),
      ),
      duration: Text('10 days 9 nights',
          style: GoogleFonts.robotoSlab(
              color: Colors.white, fontSize: 8, fontWeight: FontWeight.w700))),
  TripSites(
      image: const AssetImage('assets/homescreen_pics/hiker6.jpg'),
      child: Container(
        height: 30,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 93, 116, 128).withOpacity(0.5)),
        child: Center(
          child: Text('900',
              style: GoogleFonts.robotoSlab(color: Colors.white, fontSize: 15)),
        ),
      ),
      place: Text(
        'Bosokoli Summer Mountain',
        style: GoogleFonts.robotoSlab(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 12,
            fontWeight: FontWeight.w700),
      ),
      duration: Text('11 days 10 nights',
          style: GoogleFonts.robotoSlab(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 8,
              fontWeight: FontWeight.w700)))
];
