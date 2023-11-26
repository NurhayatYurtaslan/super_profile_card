import 'package:flutter/material.dart';
import 'package:super_profile_card/profile_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 19, 53, 131),
        title: const Text(
          "Super Profile Card",
          style: TextStyle(
            color: Color.fromARGB(255, 204, 179, 189),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const SuperProfileCard(),
    );
  }
}
