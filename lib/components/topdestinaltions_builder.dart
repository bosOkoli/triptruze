import 'package:flutter/material.dart';
import 'package:triptruzeandbosokoli/components/topdestinations.dart';

class TopDestinationBuilder extends StatelessWidget {
  const TopDestinationBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: topDestinations.length,
        itemBuilder: ((context, index) {
          final topDestination = topDestinations[index];
          return Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 93, 116, 128),
              ),
              child: Stack(
                children: [
                  Positioned(child: topDestination.child, top: 5, left: 5),
                  Positioned(
                    child: topDestination.place,
                    top: 15,
                    left: 100,
                  ),
                  Positioned(
                    child: topDestination.subPlace,
                    top: 35,
                    left: 100,
                  ),
                  Positioned(
                    child: topDestination.price,
                    bottom: 20,
                    left: 100,
                  ),
                ],
              ),
              padding: const EdgeInsets.all(0),
              constraints: const BoxConstraints.expand(
                width: 190,
                height: 110,
              ),
            ),
          );
        }),
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16);
        });
  }
}
