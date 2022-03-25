import 'package:flutter/material.dart';
import 'package:triptruzeandbosokoli/components/trip_sites.dart';

class TripSitesBuilder extends StatelessWidget {
  const TripSitesBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tripSites.length,
        itemBuilder: ((context, index) {
          final tripSite = tripSites[index];
          return Center(
            child: Container(
              child: Stack(
                children: [
                  Positioned(child: tripSite.child, top: 5, right: 5),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 35,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        gradient: LinearGradient(
                          end: const Alignment(0, 0.0),
                          begin: const Alignment(0, 0.2),
                          colors: <Color>[
                            Colors.black12.withOpacity(0.95),
                            const Color.fromARGB(255, 71, 72, 72)
                                .withOpacity(0.8)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: tripSite.place,
                    bottom: 20,
                    left: 3,
                  ),
                  Positioned(
                    child: tripSite.duration,
                    bottom: 10,
                    left: 3,
                  ),
                ],
              ),
              padding: const EdgeInsets.all(0),
              constraints: const BoxConstraints.expand(
                width: 170,
                height: 470,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: tripSite.image,
                  fit: BoxFit.fill,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
          );
        }),
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16);
        });
  }
}
