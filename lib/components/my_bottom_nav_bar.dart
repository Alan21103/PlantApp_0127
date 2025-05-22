import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constraints.dart';
import 'package:plant_app/screens/camera/camera_screen.dart';
import 'package:plant_app/screens/profile/profile_screen.dart';
import 'package:plant_app/screens/home/home_screen.dart';

class MyBottomNavBar extends StatelessWidget {
  final int currentIndex;
  
  const MyBottomNavBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/flower.svg",
              color: currentIndex == 0 ? kPrimaryColor : Colors.grey,
            ),
            onPressed: () {
              if (currentIndex != 0) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              }
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/camera.svg",
              width: 25,
              color: currentIndex == 1 ? kPrimaryColor : Colors.grey,
            ),
            onPressed: () {
              if (currentIndex != 1) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CameraScreen(),
                  ),
                );
              }
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/user-icon.svg",
              color: currentIndex == 2 ? kPrimaryColor : Colors.grey,
            ),
            onPressed: () {
              if (currentIndex != 2) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}