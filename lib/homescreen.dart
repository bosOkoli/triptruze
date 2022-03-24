import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:triptruzeandbosokoli/homescreen_image_containers/homescreen_image_container1.dart';
import 'package:triptruzeandbosokoli/homescreen_image_containers/homescreen_image_container2.dart';
import 'package:triptruzeandbosokoli/homescreen_image_containers/homescreen_image_container3.dart';
import 'package:triptruzeandbosokoli/homescreen_image_containers/homescreen_image_container4.dart';
import 'package:triptruzeandbosokoli/screens/triptruzescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 90, left: 25),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Move forward',
                        style: GoogleFonts.racingSansOne(
                            color: Colors.white, fontSize: 35)),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text('for',
                            style: GoogleFonts.racingSansOne(
                                color: Colors.white, fontSize: 35)),
                        const SizedBox(width: 5),
                        Text('adventure!',
                            style: GoogleFonts.racingSansOne(
                                color: const Color.fromARGB(255, 16, 247, 255),
                                fontSize: 35))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                        'the tendacy to seek out unusual\nchallanges or place oneself for outside the\nspace of what an average person would\nconsider normal or safe',
                        style: GoogleFonts.robotoSlab(color: Colors.white)),
                    const SizedBox(
                      height: 25,
                    ),
                    RawMaterialButton(
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: const Color.fromARGB(255, 16, 247, 255)),
                        child: Center(
                          child: Text('let\'s go!',
                              style: GoogleFonts.robotoSlab(
                                  color: const Color.fromARGB(255, 0, 14, 19),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TripTruzeScreen()));
                      },
                    )
                  ]),
            ),
            Row(
              children: const [
                HomeScreenImageContainer1(),
                HomeScreenImageContainer2(),
                HomeScreenImageContainer3(),
                HomeScreenImageContainer4()
              ],
            )
          ])),
    );
  }
}
