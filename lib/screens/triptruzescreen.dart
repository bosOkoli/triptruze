import 'package:flutter/material.dart';
import 'package:triptruzeandbosokoli/components/home_tab.dart';
import 'package:triptruzeandbosokoli/components/luggage_tab.dart';
import 'package:triptruzeandbosokoli/components/notification_tab.dart';
import 'package:triptruzeandbosokoli/components/trips_tab.dart';

class TripTruzeScreen extends StatefulWidget {
  const TripTruzeScreen({Key? key}) : super(key: key);

  @override
  State<TripTruzeScreen> createState() => _TripTruzeScreenState();
}

class _TripTruzeScreenState extends State<TripTruzeScreen> {
  int _selectedIndex = 0;

// 8
  static List<Widget> pages = <Widget>[
    const HomeTab(),
    const TripsTab(),
    const NotificationTab(),
    const LuggageTab()
  ];

// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        primary: false,
        backgroundColor: const Color.fromARGB(255, 8, 42, 61),
        body: pages[_selectedIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 45),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            elevation: 0.0,
            backgroundColor: const Color.fromARGB(255, 8, 42, 61),
            selectedItemColor: const Color.fromARGB(255, 16, 247, 255),
            unselectedItemColor: const Color.fromARGB(255, 212, 211, 211),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                backgroundColor: const Color.fromARGB(255, 8, 42, 61),
                activeIcon: null,
                icon: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 93, 116, 128)),
                  child: const Icon(
                    Icons.home_rounded,
                    size: 35,
                  ),
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: const Color.fromARGB(255, 8, 42, 61),
                activeIcon: null,
                icon: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 93, 116, 128)),
                  child: const Icon(
                    Icons.menu_open_outlined,
                    size: 35,
                  ),
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                label: 'Trips',
              ),
              BottomNavigationBarItem(
                backgroundColor: const Color.fromARGB(255, 8, 42, 61),
                activeIcon: null,
                icon: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 93, 116, 128)),
                  child: Stack(
                    children: const [
                      Center(
                          child: Positioned(
                              child: Icon(
                        Icons.notifications_outlined,
                        size: 35,
                      ))),
                      Positioned(
                          child: Icon(
                            Icons.circle,
                            size: 10,
                            color: Color.fromARGB(255, 16, 247, 255),
                          ),
                          top: 10,
                          right: 14)
                    ],
                  ),
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                backgroundColor: const Color.fromARGB(255, 8, 42, 61),
                activeIcon: null,
                icon: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 93, 116, 128)),
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 35,
                  ),
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                label: 'Luggages',
              ),
            ],
          ),
        ));
  }
}
