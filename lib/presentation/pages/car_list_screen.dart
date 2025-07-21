import 'package:flutter/material.dart';
import 'package:car_rental/data/models/car.dart';
import 'package:car_rental/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget{
  final List<Car> cars  =[
    Car(model: 'ford bens' ,distance: 680,fuelCapacity: 50,pricePerHour: 5000), 
    Car(model: 'Audi – A8 L' ,distance: 680,fuelCapacity: 50,pricePerHour: 5000), 
    Car(model: 'Lexus – LS 500' ,distance: 680,fuelCapacity: 50,pricePerHour: 5000),
    Car(model: 'Jaguar – XJ' ,distance: 680,fuelCapacity: 50,pricePerHour: 5000),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose ypur car '),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
        body :ListView.builder(
          itemCount : cars.length, // Example item count
          itemBuilder: (context, index) {
            return CarCard(car: cars[index]);
              
            
          },
        ),
    );
  }
}