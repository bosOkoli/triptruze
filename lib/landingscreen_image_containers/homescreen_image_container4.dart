import 'package:flutter/material.dart';

class LandingScreenImageContainer4 extends StatelessWidget {
  const LandingScreenImageContainer4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 5),
      child: Stack(children: <Widget>[
        //image code
        Padding(
          padding: const EdgeInsets.only(top: 0, left: 5),
          child: Container(
              width: 80,
              height: 385,
              decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.dstATop),
                    image:
                        const AssetImage('assets/trips_pics/hiker2.jpg'),
                    fit: BoxFit.fitHeight),
              )),
        ),
        //top grey shadow
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 70,
            width: 85,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                end: const Alignment(0.0, 1.5),
                begin: const Alignment(0, -0.1),
                colors: <Color>[
                  const Color.fromARGB(255, 0, 14, 19).withOpacity(0.96),
                  const Color.fromARGB(255, 0, 14, 19).withOpacity(0.0)
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
