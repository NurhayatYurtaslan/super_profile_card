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
        backgroundColor: const Color.fromARGB(255, 41, 204, 232),
        title: const Text(
          "Super Profile Card",
          style: TextStyle(
            color: Color.fromARGB(255, 41, 204, 232),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const SuperProfileCard(
        // colors for card body
        gradientColors: [
          Color.fromARGB(255, 41, 204, 232),
          Color.fromARGB(255, 41, 204, 232),
          Color.fromARGB(255, 41, 204, 232),
          Color.fromARGB(255, 0, 0, 0),
          Color.fromARGB(255, 41, 204, 232),
        ],
        //icon
//top
        topCircleColor: Color.fromARGB(255, 1, 1, 1),
        shadowColor: Colors.black,
        shadowOffset: 38.0,
        bulurSigmaValue: 10.0,
        //topImage
        topImageUrl:
            'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/seven.png?raw=true',
        topImageColor: Colors.transparent,
        topImageWidth: 0.8,
        //logo Image
        logoImageUrl:
            'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/logo.png?raw=true',
        logoImageColor: Color.fromARGB(255, 41, 204, 232),
        //Top Text
        topText: 'Super Profile Card',
        topTextStyle: TextStyle(
          color: Color.fromARGB(255, 41, 204, 232),
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        //bottomImage
        bottomImageUrl:
            'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/five.png?raw=true',
        bottomImageColor: Colors.black,
        bottomImageWidth: 0.25,

        //Icons
        iconsColor: Colors.black,
        firstIcon: Icons.link,
        secondIcon: Icons.email,
        thirdIcon: Icons.location_on,
        iconsTextColor: Colors.black,
        firstIconText: "First Icon's Text",
        secondIconText: "Secon Icon's Text",
        thirdIconText: "Third Icon's Text",
        dividerColor: Colors.black,
      ),
    );
  }
}
