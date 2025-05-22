import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Completer <GoogleMapController> _ctrl = Completer();
  Marker? _pickedMarker;
  String? _pickedAddress;
  String? _currentAddress;
  CameraPosition? _initialCamera;
  Position? _currentPosition;


  @override
  void initState() {
    super.initState();
    _setupLocation();
  }

  Future<void> _setupLocation() async {
    try{
      final pos = await getPermissions();
      _currentPosition = pos;
      _initialCamera = CameraPosition(
        target: LatLng(pos.latitude, pos.longitude),
        zoom: 10,
      );

      final placemark = await placemarkFromCoordinates(
        _currentPosition!.latitude,
        _currentPosition!.longitude,
      );

      final p = placemark.first;
      _currentAddress = '${p.name}, ${p.locality}, ${p.country}';

      setState(() {});
    } catch (e){
      // Jika gagal (denied, service off), fallback ke view global
      _initialCamera = const CameraPosition(target: LatLng(0, 0), zoom: 20);
      setState(() {});
      print(e);
      ScaffoldMessenger.of(
        context,
        ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }


  Widget build(BuildContext context) {
    return const Placeholder();
  }
}