import 'package:flutter/material.dart';
import 'package:hackfest_turtley/home_screen.dart';

class InsurancePage extends StatelessWidget {
  const InsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      height: 150.0, // Set the height of your header
      child: Center(
        child: Text(
          'My Rounded Corner Header',
          style: TextStyle(
            color: Colors.green,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Container(
        child: Center(
            child: Text(
      "This is our insurance app", selectionColor: Colors.black,
      // need header

      //search bar

      // panels
    )));
  }
}
