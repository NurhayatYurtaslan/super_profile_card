import 'package:flutter/material.dart';
import 'package:super_profile_card/profile_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 57, 57),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 46, 126, 57),
        title: const Text(
          "Super Profile Card",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const SuperProfileCard(),
    );
  }
}
