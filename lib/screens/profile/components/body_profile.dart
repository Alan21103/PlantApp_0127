import 'package:flutter/material.dart';
import 'package:plant_app/screens/profile/components/header_profile.dart';
import 'package:plant_app/screens/profile/components/profile_info.dart';
import 'package:plant_app/screens/profile/map_page.dart';

class BodyProfile extends StatefulWidget {
  const BodyProfile({super.key});

  @override
  State<BodyProfile> createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  String selectedAddress = "";

  void _selectAddress() async {
    // Simulasikan pindah ke halaman map
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MapPage()), // ganti MapPage sesuai punyamu
    );

    if (result != null) {
      setState(() {
        selectedAddress = result;
      });
    }
  }

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
            address: selectedAddress,
            onTapMap: _selectAddress,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
