import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // Container(
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/onboarding.png'),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          //   height: 300, // Optional: adjust height as needed
          // ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Premium cars.\nEnjoy the luxury',
                  style: TextStyle(
                    color: Colors.black12,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                 
                ),
                 SizedBox(height: 10),
                  Text('Premium and prestigue car dairly rental..\n blh blh blh'
                  , style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
