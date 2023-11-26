import 'package:flutter/material.dart';
import 'package:super_profile_card/Widgets/detail_widget.dart';
import 'package:super_profile_card/profile_painter.dart';

class SuperProfileCard extends StatelessWidget {
  const SuperProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Container(
          height: height * 0.7,
          width: width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              colors: [
                Colors.purple,
                Colors.red,
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
                      width: width * 0.9,
                      color: Colors.white70.withOpacity(0.3),
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
                          color: Colors.deepPurple[700],
                          width: width * 0.8,
                        ),
                      ),
                      //logo
                      Center(
                        child: Image.network(
                          'https://github.com/NurhayatYurtaslan/super_profile_card/blob/main/assets/image/png/seven.png?raw=true',
                          color: Colors.deepPurple[700],
                          width: width * 0.8,
                        ),
                      ),
                      Text(
                        'Cylon Coder',
                        style: TextStyle(
                          color: Colors.deepPurple[700],
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      detailWidget(
                        icon: Icons.phone,
                        text: '+94765555777',
                      ),
                      detailWidget(
                        icon: Icons.email,
                        text: 'coderofceylon@gmail.com',
                      ),
                      detailWidget(
                        icon: Icons.location_on,
                        text: 'Galle, Sri Lanka',
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
