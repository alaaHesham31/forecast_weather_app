import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:forcast_weather_app/screens/home_screen.dart'; // Import your home screen
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      home: SplashScreen(), // Set the SplashScreen as the initial screen
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1A2344),
              Color.fromARGB(255, 125, 32, 142),
              Colors.purple,
              Color.fromARGB(255, 151, 44, 170),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Lottie Animation
              LottieBuilder.asset(
                "assets/lottie/Animation - 1727217283565.json",
                height: 250, // Adjust the size as needed
              ),
              
              // Title and Subtitle Text
              const SizedBox(height: 20),
              Text(
                "Weather",
                style: GoogleFonts.lato(
                  fontSize: 70,
                  color: Colors.white,
                ),
              ),
              Text(
                "ForeCasts",
                style: GoogleFonts.lato(
                  fontSize: 60,
                  color: Color.fromARGB(255, 255, 203, 59), // Yellow color
                ),
              ),
              
              // Button for navigation
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Navigate to HomeScreen when button is pressed
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 203, 59), // Same yellow as the text
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                ),
                child: Text(
                  'Get Start',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Color.fromARGB(255, 125, 32, 142), // Black text on yellow button
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
