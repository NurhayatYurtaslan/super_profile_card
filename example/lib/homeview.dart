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
        backgroundColor: Color.fromARGB(255, 66, 163, 181),
        title: const Text(
          "Super Profile Card",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const SuperProfileCard(
        // colors for card body
        gradientColors: [
          Color.fromARGB(255, 20, 35, 28),
          Color.fromARGB(255, 41, 204, 232),
          Color.fromARGB(255, 13, 17, 16),
          Color.fromARGB(255, 13, 17, 16),
        ],
        //icon
        iconsColor: Colors.black,
        //bottomImage
        bottomImageUrl:
            'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/six.png?raw=true',
        bottomImageColor: Colors.black,
        bottomImageWidth: 0.85,
      ),
    );
  }
}
