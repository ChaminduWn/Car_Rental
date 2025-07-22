import 'package:car_rental/data/models/car.dart';
import 'package:car_rental/presentation/pages/MapsDetailsPage.dart';
import 'package:car_rental/presentation/widgets/car_card.dart';
import 'package:car_rental/presentation/widgets/more_card.dart';
import 'package:flutter/material.dart';

class CarDetailsPage extends StatefulWidget {
  final Car car;

  const CarDetailsPage({super.key, required this.car});

  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300), // Set to 300ms for visible animation
    );
    _animation = Tween<double>(begin: 1.0, end: 1.05).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    _controller!.forward();
  }

  @override
  void dispose() {
    _controller?.dispose(); // Properly dispose the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final car = widget.car;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.info_outline),
            SizedBox(width: 8),
            Text('Information'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CarCard(car: car),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xffF3F3F3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 48,
                          backgroundImage: AssetImage('assets/user.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Chamindu WN',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$4000',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MapsDetailsPage(car: car)),
                      );
                    },
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Transform.scale(
                        scale: _animation?.value ?? 1.0,
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/map.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            MoreCard(
              car: Car(
                model: car.model + "-1",
                distance: car.distance + 100,
                fuelCapacity: car.fuelCapacity + 100,
                pricePerHour: car.pricePerHour + 1000,
              ),
            ),
            const SizedBox(height: 10),
            MoreCard(
              car: Car(
                model: car.model + "-2",
                distance: car.distance + 200,
                fuelCapacity: car.fuelCapacity + 200,
                pricePerHour: car.pricePerHour + 1000,
              ),
            ),
            const SizedBox(height: 10),
            MoreCard(
              car: Car(
                model: car.model + "-3",
                distance: car.distance + 300,
                fuelCapacity: car.fuelCapacity + 300,
                pricePerHour: car.pricePerHour + 1000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
