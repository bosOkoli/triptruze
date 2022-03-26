import 'package:flutter/material.dart';

class LandingScreenImageContainer1 extends StatelessWidget {
  const LandingScreenImageContainer1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 5),
      child: Container(
          width: 80,
          height: 327,
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop),
                image: const AssetImage('assets/trips_pics/hiker3.jpg'),
                fit: BoxFit.fitHeight),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          )),
    );
  }
}
