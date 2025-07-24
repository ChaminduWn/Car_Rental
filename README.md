

# 🚗 Car Rental App

A **Flutter-based mobile application** for renting premium cars, integrated with **Firebase Firestore** for real-time data management. The app features a luxurious and responsive UI, structured with **BLoC architecture**, and supports **cross-platform deployment** on Android, iOS, and Web.

---

## ✨ Features

* **🛬 Onboarding Screen**
  Premium welcome screen with rich UI elements, including background image, gold-accented title, and a “Get Started” CTA.

* **🚘 Car List Screen**
  Browse available premium cars (e.g., BMW X5, BMW 3 Series) with **Firestore data fetching** and **search by model**.

* **📄 Car Details Screen**
  Detailed view showing model, distance, fuel capacity, price/hour, user avatar, and a map preview linking to location.

* **🔥 Firestore Integration**
  Car data managed in Firestore's `cars` collection with safe parsing (`int → double`) and real-time updates.

* **📦 BLoC State Management**
  Clean separation of concerns using BLoC with states: `CarsLoading`, `CarsLoaded`, and `CarError`.

* **📱 Responsive UI Design**
  Uses consistent theming (`Color(0xffF3F3F3)`), soft shadows, smooth animations, and mobile-first UX.

---

## 🛠️ Tech Stack

| Layer        | Tools / Frameworks                                                        |
| ------------ | ------------------------------------------------------------------------- |
| Frontend     | Flutter, Dart                                                             |
| Backend      | Firebase Firestore                                                        |
| State Mgmt   | Flutter BLoC                                                              |
| Dependencies | `cloud_firestore`, `flutter_bloc`, `font_awesome_flutter`, `url_launcher` |
| IDEs/Tools   | Visual Studio Code, Android Studio, Firebase Console                      |

---

## 📸 Screenshots

| Onboarding                                                                                            | Car List                                                                                            | Car Details                                                                                            | Map View                                                                                               |
| ----------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| ![onboarding screen](https://github.com/user-attachments/assets/f5106de3-4290-47ec-a46b-96622cabb31b) | ![car list screen](https://github.com/user-attachments/assets/0e1dff74-5523-4265-8d77-b1ee50aadc22) | ![car details screen](https://github.com/user-attachments/assets/1d436777-097e-47c3-8ecf-17f1a29a2d89) | ![map details screen](https://github.com/user-attachments/assets/7147344a-3ef1-4650-8356-15eaa3a67d12) |

---

## 🚀 Getting Started

### ✅ Prerequisites

* Flutter SDK (>=3.0.0)
* Firebase project with Firestore
* Android/iOS emulator or physical device
* Visual Studio Code / Android Studio

### 📥 Installation

```bash
# Clone the repository
git clone https://github.com/your-username/car-rental-app.git
cd car-rental-app

# Install dependencies
flutter pub get
```

### 🔧 Firebase Setup

1. Create a project at [Firebase Console](https://console.firebase.google.com).
2. Register Android/iOS apps.
3. Download `google-services.json` (Android) or `GoogleService-Info.plist` (iOS) and place them in appropriate folders.
4. Run the FlutterFire CLI:

   ```bash
   flutterfire configure
   ```

### ☁️ Firestore Setup

* Create a `cars` collection with sample documents:

```json
{
  "id": "car_005",
  "model": "BMW 3 Series",
  "distance": 2500.0,
  "fuelCapacity": 60.0,
  "pricePerHour": 20.0
}
```

* Update Firestore Rules:

```js
rules_version = '2';
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
```

### ▶️ Run the App

```bash
flutter run
```

---

## 📁 Project Structure

```
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
│   │   ├── onboarding_page.dart
│   │   ├── car_list_screen.dart
│   │   ├── car_details_page.dart
│   │   └── maps_details_page.dart
│   ├── widgets/
│   │   ├── car_card.dart
│   │   └── more_card.dart
├── firebase_options.dart
├── main.dart
```

---

## 🐞 Known Issues

* **Firestore Type Handling**: `int` to `double` conversion issue resolved in `Car.fromMap()`.
* **Mobile UI Consistency**: Firestore values updated to use floating points (e.g., `2500.0`).

---

## 🧭 Future Improvements

* 🔒 Firebase Authentication for user accounts
* 📍 Google Maps API integration for live maps
* 📊 Advanced search filters (price, model, capacity)
* 📆 Booking functionality (Firestore `bookings` collection)

---
