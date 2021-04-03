import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final token = "pk.eyJ1IjoiYWxpYWtiZXJhYWthc2giLCJhIjoiY2tteXVwZ2d5MDdrajJ4bWI1c2R2Z3ljNyJ9.XsYD9w7V0drii-Qc-atsaQ";

  final LatLngBounds hawaiiBounds = LatLngBounds(
    southwest: const LatLng(17.26672, -161.14746),
    northeast: const LatLng(23.76523, -153.74267),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home"
        ),
      ),
      body: Text(
        "Hello world",
      ),
    );
  }


}
