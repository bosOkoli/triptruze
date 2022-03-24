import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripTruzeScreen extends StatefulWidget {
  const TripTruzeScreen({Key? key}) : super(key: key);

  @override
  State<TripTruzeScreen> createState() => _TripTruzeScreenState();
}

class _TripTruzeScreenState extends State<TripTruzeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0.0, 0.0),
                end: Alignment(0, 2.0),
                colors: [
              Color.fromARGB(255, 0, 14, 19),
              Color.fromARGB(255, 18, 76, 107)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.reorder, color: Colors.white),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'triptruze & bosokoli',
                      style: GoogleFonts.racingSansOne(
                          color: Colors.white, fontSize: 20),
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/homescreen_pics/hiker4.jpg'),
                    )
                  ],
                ),
                Container(
                  child: Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: 15, bottom: 8),
                      child: Row(children: const [
                        Text('search...',
                            style: TextStyle(color: Colors.white)),
                        Icon(Icons.search)
                      ])),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 93, 116, 128)),
                )
              ],
            ),
          ),
        ));
  }
}
