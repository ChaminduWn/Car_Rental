import 'package:car_rental/data/models/car.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final Car car;

  const  CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors. black12,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ) ,
        child: Column(
          children: [
            Image.asset('assets/car_image.png', height: 300 ,width: 300,),
            Text(
              car.model,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/gps.png',
                          width: 18,
                          height: 18,
                        ),
                        SizedBox(width: 4),
                        Text('${car.distance.toStringAsFixed(0)} km'),
                      ],
                    ),
                    SizedBox(width: 16),
                    Row(
                      children: [
                        Image.asset(
                          'assets/pump.png',
                          width: 18,
                          height: 18,
                        ),
                        SizedBox(width: 4),
                        Text('${car.fuelCapacity.toStringAsFixed(0)} L'),
                      ],
                    ),
                  ],
                ),
      
                Text('\Rs.${car.pricePerHour.toStringAsFixed(2)}/hr',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    )),  
              ],
            ),
          ],
        ),
      ),
    );
  }
}
