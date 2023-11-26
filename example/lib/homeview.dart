import 'package:flutter/material.dart';
import 'package:super_profile_card/profile_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Super Profile Card"),
      ),
      body: const SuperProfileCard(),
    );
  }
}
