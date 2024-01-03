import 'package:flutter/material.dart';
import 'package:super_profile_card_package/profile_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 57, 57),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 97, 0, 123),
        title: const Text(
          "Super Profile Card",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const SuperProfileCard(
        // colors for card body
        gradientColors: [
          Color.fromARGB(255, 97, 0, 123),
          Color.fromARGB(255, 232, 41, 216),
          Color.fromARGB(255, 189, 146, 185),
          Color.fromARGB(255, 0, 0, 0),
          Color.fromARGB(255, 232, 41, 159),
        ],
        //icon
        //top
        topCircleColor: Color.fromARGB(255, 48, 0, 61),
        shadowColor: Color.fromARGB(255, 97, 0, 123),
        shadowOffset: 38.0,
        bulurSigmaValue: 10.0,
        //topImage
        topImageUrl:
            'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/seven.png?raw=true',
        topImageColor: Colors.white,
        topImageWidth: 1.2,
        //logo Image
        logoImageUrl:
            'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/logo.png?raw=true',
        logoImageColor: Colors.white,
        //Top Text
        topText: 'Super Profile Card',
        topTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        //bottomImage
        bottomImageUrl:
            'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/eleven.png?raw=true',
        bottomImageColor: Color.fromARGB(255, 252, 252, 252),
        bottomImageWidth: 0.80,
        //Icons
        iconsColor: Color.fromARGB(255, 255, 255, 255),
        firstIcon: Icons.link,
        secondIcon: Icons.email,
        thirdIcon: Icons.location_on,
        iconsTextColor: Color.fromARGB(255, 255, 255, 255),
        firstIconText: "First Icon's Text",
        secondIconText: "Secon Icon's Text",
        thirdIconText: "Third Icon's Text",
        dividerColor: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
