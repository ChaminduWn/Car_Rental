Car Rental App
A Flutter-based mobile application for renting premium cars, integrated with Firebase Firestore for real-time data management. The app features a clean, luxurious UI, BLoC architecture for state management, and cross-platform support for web and mobile (Android/iOS).
Features

Onboarding Screen: Welcomes users with a premium design, featuring a background image, gold-accented text, and a "Get Started" button.
Car List Screen: Displays a list of cars (e.g., BMW X5, BMW 3 Series) fetched from Firestore, with search functionality by model name.
Car Details Screen: Shows detailed car information (model, distance, fuel capacity, price per hour) with a user profile section and a clickable map preview linking to a location page.
Firestore Integration: Stores car data (id, model, distance, fuelCapacity, pricePerHour) in a cars collection, with robust type handling (int to double conversion).
BLoC State Management: Uses Flutter BLoC for efficient data fetching and UI updates, handling states like CarsLoading, CarsLoaded, and CarError.
Responsive UI: Styled with consistent colors (e.g., Color(0xffF3F3F3)), shadows, and animations (e.g., scaling map images).

Tech Stack

Frontend: Flutter, Dart
Backend: Firebase Firestore
State Management: Flutter BLoC
Dependencies: cloud_firestore, flutter_bloc, font_awesome_flutter, url_launcher
Tools: Visual Studio Code, Android Studio, Firebase Console

Screenshots
![app_logo](https://github.com/user-attachments/assets/9da68bff-5e72-4b4b-a8c6-5f3b5121a30d)
![onboarding screen](https://github.com/user-attachments/assets/f5106de3-4290-47ec-a46b-96622cabb31b)
![car details screen](https://github.com/user-attachments/assets/1d436777-097e-47c3-8ecf-17f1a29a2d89)
![car list scren](https://github.com/user-attachments/assets/0e1dff74-5523-4265-8d77-b1ee50aadc22)
![map details screen](https://github.com/user-attachments/assets/7147344a-3ef1-4650-8356-15eaa3a67d12)



Getting Started
Prerequisites

Flutter SDK: >=3.0.0
Firebase project with Firestore enabled
Android/iOS emulator or physical device
Visual Studio Code or Android Studio

Installation

Clone the repository:git clone https://github.com/your-username/car-rental-app.git
cd car-rental-app


Install dependencies:flutter pub get


Configure Firebase:
Create a Firebase project at console.firebase.google.com.
Add your Android/iOS app to the project and download google-services.json (Android) or GoogleService-Info.plist (iOS).
Run the FlutterFire CLI:flutterfire configure




Set up Firestore:
Create a cars collection with documents (e.g., id: car_005, model: BMW 3 Series, distance: 2500.0, fuelCapacity: 60.0, pricePerHour: 20.0).
Update Firestore rules:rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /cars/{document=**} {
      allow read: if true;
      allow write: if false;
    }
    match /users/{document=**} {
      allow read, write: if true;
    }
  }
}




Run the app:flutter run



Project Structure
car_rental/
├── data/
│   ├── datasources/
│   │   └── firebase_car_data_source.dart
│   ├── models/
│   │   └── car.dart
│   ├── repositories/
│   │   └── car_repository_impl.dart
├── domain/
│   ├── repositories/
│   │   └── car_repository.dart
│   ├── usecases/
│   │   └── get_cars.dart
├── presentation/
│   ├── bloc/
│   │   ├── car_bloc.dart
│   │   ├── car_event.dart
│   │   └── car_state.dart
│   ├── pages/
│   │   ├── car_details_page.dart
│   │   ├── car_list_screen.dart
│   │   ├── maps_details_page.dart
│   │   └── onboarding_page.dart
│   ├── widgets/
│   │   ├── car_card.dart
│   │   └── more_card.dart
├── firebase_options.dart
├── main.dart

Known Issues

Type Mismatch: Resolved int to double error in Car.fromMap for Firestore number fields.
Phone Display: Ensured consistent car data display on mobile by updating Firestore documents to use double values (e.g., 2500.0).

Future Improvements

Add booking functionality with a bookings collection in Firestore.
Integrate Google Maps for dynamic location previews in MapsDetailsPage.
Enhance search with filters (e.g., price, fuel capacity).
Add user authentication (e.g., Firebase Auth) for personalized features.

Contributing
Contributions are welcome! Please open an issue or submit a pull request for bug fixes or new features.
License
MIT License
Contact

LinkedIn: [Your LinkedIn Profile URL]
Email: [Your Email Address]
