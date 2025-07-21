import 'package:flutter/material.dart';

class MapsDetailsPage extends StatelessWidget {
  const MapsDetailsPage({Key? key}) : super(key :key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Details'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Map details will be displayed here.',
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),
      ),
    );
  }
}