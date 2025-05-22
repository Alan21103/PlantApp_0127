import 'package:flutter/material.dart';
import 'package:plant_app/constraints.dart';
import 'package:plant_app/screens/profile/components/header_profile.dart';
import 'package:plant_app/screens/profile/components/profile_info.dart';

class BodyProfile extends StatelessWidget {
  const BodyProfile({super.key});

 @override
  Widget build(BuildContext context) {
   
    Size size = MediaQuery.of(context).size;
   
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderProfile(size: size),
          ProfileInfo(
            name: "Alan Syahputra",
            phone: "0895335992588",
            email: "alan21@gmail.com",
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}