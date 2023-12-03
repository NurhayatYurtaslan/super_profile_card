import 'package:flutter/material.dart';
import 'package:super_profile_card/Widgets/detail_widget.dart';
import 'package:super_profile_card/profile_painter.dart';

class SuperProfileCard extends StatelessWidget {
  final List<Color> gradientColors;
  final Color iconsColor;
  final String bottomImageUrl;
  final Color bottomImageColor;
  final double bottomImageWidth;
  const SuperProfileCard(
      {super.key,
      required this.gradientColors,
      required this.iconsColor,
      this.bottomImageUrl =
          'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/six.png?raw=true',
      this.bottomImageColor = Colors.transparent,
      this.bottomImageWidth = 0.85});

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
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topRight,
            colors: gradientColors,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: CustomPaint(
            size: Size(width, height),
            painter: CardCustomPainter(),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.network(
                    bottomImageUrl,
                    width: width * bottomImageWidth,
                    color: bottomImageColor,
                  ),
                ),
                Column(
                  children: [
                    
                    //Logo
                    Center(
                      child: Image.network(
                        'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/seven.png?raw=true',
                        color: const Color.fromARGB(255, 41, 204, 232),
                        width: width * 0.8,
                      ),
                    ),
                    //logo
                    Center(
                      child: Image.network(
                        'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/logo.png?raw=true',
                        color: Color.fromARGB(255, 41, 204, 232),
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
                        color: Color.fromARGB(255, 41, 204, 232),
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
                      iconColor: iconsColor,
                    ),
                    detailWidget(
                      icon: Icons.email,
                      text: 'nurhayatyurtaslan38@gmail.com',
                      iconColor: iconsColor,
                    ),
                    detailWidget(
                      icon: Icons.location_on,
                      text: 'Balikesir/Turkey',
                      iconColor: iconsColor,
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
