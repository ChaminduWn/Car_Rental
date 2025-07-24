import 'package:flutter/material.dart';
import 'package:car_rental/data/models/car.dart';
import 'package:car_rental/presentation/widgets/car_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_rental/presentation/bloc/car_bloc.dart'; // Ensure this import matches your file structure
import 'package:car_rental/presentation/bloc/car_state.dart'; // if states are separated

class CarListScreen extends StatelessWidget {
  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state) {
          if (state is CarsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CarsLoaded) {
            return ListView.builder(
              itemCount: state.cars.length,
              itemBuilder: (context, index) {
                return CarCard(car: state.cars[index]);
              },
            );
          } else if (state is CarError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: Text('No cars available.'));
          }
        },
      ),
    );
  }
}
