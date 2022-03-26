import 'package:flutter/material.dart';

class LandingScreenImageContainer3 extends StatelessWidget {
  const LandingScreenImageContainer3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 10),
      child: Container(
          width: 80,
          height: 355,
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop),
                image: const AssetImage('assets/trips_pics/hiker1.jpg'),
                fit: BoxFit.cover),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          )),
    );
  }
}
