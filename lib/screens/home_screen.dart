import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 150), // Logo
            SizedBox(height: 20), // Space between logo & button
            ElevatedButton(
              onPressed: () {
                // Add navigation or action here
                print("Start button pressed");
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text("Start"),
            ),
          ],
        ),
      ),
    );
  }
}
