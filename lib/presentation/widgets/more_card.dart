import 'package:flutter/material.dart';
import 'package:car_rental/data/models/car.dart';

class MoreCard extends StatelessWidget {
  final Car car;

  const MoreCard({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(10  ),
      decoration: BoxDecoration(
        color: Color(0xff212828),
        borderRadius: BorderRadius.circular(12),   
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ], 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.model,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.grey, size: 20),
                  SizedBox(width: 5),
                  Text(
                    '${car.distance} km',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.battery_full, color: Colors.white, size: 16),
                  SizedBox(width: 5),
                  Text(
                    '${car.fuelCapacity} L',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 24),
        ],
      ),
    );
  }
}
