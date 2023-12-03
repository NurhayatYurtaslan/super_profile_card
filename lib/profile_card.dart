import 'package:flutter/material.dart';
import 'package:super_profile_card/Widgets/detail_widget.dart';
import 'package:super_profile_card/profile_painter.dart';

class SuperProfileCard extends StatelessWidget {
  const SuperProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        height: height * 0.7,
        width: width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 20, 35, 28),
              Color.fromARGB(255, 46, 126, 57),
              Color.fromARGB(255, 13, 17, 16),
              Color.fromARGB(255, 13, 17, 16)
            ],
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: CustomPaint(
            size: Size(width, height),
            painter: CardCustomPainter(),
            child: Stack(
              children: [
                // Positioned(
                //   bottom: 10,
                //   left: -15,
                //   child: Image.network(
                //     'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/two.png?raw=true',
                //     color: Colors.black.withOpacity(0.3),
                //     width: width * 0.9,
                //   ),
                // ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.network(
                    'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/six.png?raw=true',
                    width: width * 0.85,
                    color: const Color.fromARGB(179, 0, 0, 0).withOpacity(1.0),
                  ),
                ),
                Column(
                  children: [
                    // const SizedBox(
                    //   height: 30,
                    // ),
                    //Logo
                    Center(
                      child: Image.network(
                        'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/seven.png?raw=true',
                        color: const Color.fromARGB(255, 46, 126, 57),
                        width: width * 0.8,
                      ),
                    ),
                    //logo
                    Center(
                      child: Image.network(
                        'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/logo.png?raw=true',
                        color: Color.fromARGB(255, 46, 126, 57),
                        width: width * 0.3,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Super Profile Card',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 46, 126, 57),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    detailWidget(
                      icon: Icons.link,
                      text: 'github.com/NurhayatYurtaslan',
                    ),
                    detailWidget(
                      icon: Icons.email,
                      text: 'nurhayatyurtaslan38@gmail.com',
                    ),
                    detailWidget(
                      icon: Icons.location_on,
                      text: 'Balikesir/Turkey',
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
