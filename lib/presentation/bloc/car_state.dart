
import 'package:car_rental/data/models/car.dart';

abstract class CarState {}

class CarsLoading extends CarState {}

class CarsLoaded extends CarState {
  final List<Car> cars;
  CarsLoaded(this.cars);
}

class CarError extends CarState {
  final String message;
  CarError(this.message);

}
  
