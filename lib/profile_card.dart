import 'package:flutter/material.dart';
import 'package:super_profile_card_package/Widgets/detail_widget.dart';
import 'package:super_profile_card_package/profile_painter.dart';

class SuperProfileCard extends StatelessWidget {
  final List<Color> gradientColors;
  final Color iconsColor;
  final String bottomImageUrl;
  final Color bottomImageColor;
  final double bottomImageWidth;
  final String topImageUrl;
  final Color topImageColor;
  final double topImageWidth;
  final String logoImageUrl;
  final Color logoImageColor;
  final String topText;
  final TextStyle topTextStyle;
  final IconData firstIcon;
  final IconData secondIcon;
  final IconData thirdIcon;
  final String firstIconText;
  final String secondIconText;
  final String thirdIconText;
  final Color iconsTextColor;
  final Color dividerColor;
  final Color shadowColor;
  final double shadowOffset;
  final Color topCircleColor;
  final double bulurSigmaValue;

  const SuperProfileCard({
    super.key,
    required this.gradientColors,
    required this.iconsColor,
    this.bottomImageUrl =
        'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/six.png?raw=true',
    this.bottomImageColor = Colors.transparent,
    this.bottomImageWidth = 0.85,
    this.topImageUrl =
        'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/seven.png?raw=true',
    this.topImageColor = Colors.transparent,
    this.topImageWidth = 0.8,
    this.logoImageUrl =
        'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/logo.png?raw=true',
    this.logoImageColor = Colors.transparent,
    this.topText = ' ',
    this.topTextStyle = const TextStyle(
      color: Color.fromARGB(255, 41, 204, 232),
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    required this.firstIcon,
    required this.secondIcon,
    required this.thirdIcon,
    required this.firstIconText,
    required this.secondIconText,
    required this.thirdIconText,
    required this.iconsTextColor,
    required this.dividerColor,
    this.shadowColor = Colors.black,
    this.shadowOffset = 44,
    required this.topCircleColor,
    required this.bulurSigmaValue,
  });

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
            begin: Alignment.bottomCenter,
            end: Alignment.topRight,
            colors: gradientColors,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: CustomPaint(
            size: Size(width, height),
            painter: CardCustomPainter(
              topCircleColor: topCircleColor,
              shadowColor: shadowColor,
              shadowOffsetValue: shadowOffset,
              bulurSigmaValue: bulurSigmaValue,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Image.network(
                    bottomImageUrl,
                    width: width * bottomImageWidth,
                    color: bottomImageColor,
                  ),
                ),
                Image.network(
                  topImageUrl,
                  color: topImageColor,
                  width: width * topImageWidth,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 70,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.07,
                    ),
                    Center(
                      child: Image.network(
                        logoImageUrl,
                        color: logoImageColor,
                        width: width * 0.3,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      topText,
                      textAlign: TextAlign.center,
                      style: topTextStyle,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    detailWidget(
                      icon: firstIcon,
                      text: firstIconText,
                      iconColor: iconsColor,
                      iconTextColor: iconsTextColor,
                      dividerColor: dividerColor,
                    ),
                    detailWidget(
                      icon: secondIcon,
                      text: secondIconText,
                      iconColor: iconsColor,
                      iconTextColor: iconsTextColor,
                      dividerColor: dividerColor,
                    ),
                    detailWidget(
                      icon: thirdIcon,
                      text: thirdIconText,
                      iconColor: iconsColor,
                      iconTextColor: iconsTextColor,
                      dividerColor: dividerColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
