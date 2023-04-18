import 'package:flutter/material.dart';
import 'package:hackfest_turtley/receipt_scanner.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ReceiptScanner()]
        )
      );
  }
}