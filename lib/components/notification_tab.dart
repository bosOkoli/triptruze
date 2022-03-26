import 'package:flutter/material.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab({Key? key}) : super(key: key);

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
    );
  }
}
