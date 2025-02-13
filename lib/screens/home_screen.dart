import 'package:flutter/material.dart';
import 'the_model_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 150,
            ),
            SizedBox(height: 80),
            _buildButton(context, "Start", TheModelScreen()),
            SizedBox(height: 10),
            _buildButton(context, "Profile", null),
            SizedBox(height: 10),
            _buildButton(context, "Settings", null),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Widget? screen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: ElevatedButton(
        onPressed: () {
          if (screen != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 5,
          shadowColor: Colors.black,
          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        child: SizedBox(
          width: double.infinity,
          child:
              Center(child: Text(text, style: TextStyle(color: Colors.black))),
        ),
      ),
    );
  }
}
