import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final token = "pk.eyJ1IjoiYWxpYWtiZXJhYWthc2giLCJhIjoiY2tteXVwZ2d5MDdrajJ4bWI1c2R2Z3ljNyJ9.XsYD9w7V0drii-Qc-atsaQ";

  MapboxMapController mapController;

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: MapboxMap(
          accessToken: token,
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(target: LatLng(0.0, 0.0)),
          onStyleLoadedCallback: onStyleLoadedCallback,
        ),
    );
  }

  void onStyleLoadedCallback() {}

}
