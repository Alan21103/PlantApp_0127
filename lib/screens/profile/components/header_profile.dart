import 'package:flutter/material.dart';
import 'package:plant_app/constraints.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.18,
      color: kPrimaryColor, // Light purple
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 4),
          ),
          child: const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/logo1.jpg"),
          ),
        ),
      ),
    );
  }
}