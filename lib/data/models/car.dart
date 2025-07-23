class Car {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;

  Car({
    required this.model,
    required this.distance,
    required this.fuelCapacity,
    required this.pricePerHour,
  });

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      model: map['model'] ,
      distance: map['distance'] ,
      fuelCapacity: map['fuelCapacity'] ,
      pricePerHour: map['pricePerHour'] ,
    );
  }  
}

// 1 - domain /entities
// 2 - domain/repositoris (interfce/contract)
// 3 - domain/usecases (business logic) getCarById ,getCarByName

// 4 - data /models (data transfer objects)
// 5 - data /repositories (implementation of the repository interface)
// 6 - data /datasources (fetch api/ firebase)