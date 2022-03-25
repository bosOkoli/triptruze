import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:triptruzeandbosokoli/components/topdestinaltions_builder.dart';
import 'package:triptruzeandbosokoli/components/trip_sites_builder.dart';

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
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 60,
                  child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, left: 15, bottom: 8, right: 15),
                      child: Row(children: const [
                        Text('search...',
                            style: TextStyle(color: Colors.white)),
                        Spacer(),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        )
                      ])),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 93, 116, 128)),
                ),
                const SizedBox(height: 15),
                Text('Recommended :',
                    style: GoogleFonts.robotoSlab(
                        color: Colors.white, fontSize: 17)),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 200,
                  child: TripSitesBuilder(),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text('Top Destination :',
                    style: GoogleFonts.robotoSlab(
                        color: Colors.white, fontSize: 17)),
                const SizedBox(height: 15),
                const SizedBox(height: 110, child: TopDestinationBuilder())
              ],
            ),
          ),
        ));
  }
}
