import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mobapp/screen/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue,
      body: IntroductionScreen(
        pages: [
          // Slide 1
          PageViewModel(
            title: "Your Health, Just a Tap Away!",
            body:
                "Discover a seamless way to get the medicines you need, delivered to your doorstep.",
            image: Center(
              child: Image.asset('assets/images/health1.png',
                  height: 200), // Add your image to assets
            ),
            decoration: getPageDecoration(),
          ),
          // Slide 2
          PageViewModel(
            title: "Order Medicines Easily",
            body:
                "Browse thousands of medications and health products, all at your fingertips.",
            image: Center(
              child: Image.asset('assets/images/order1.png',
                  height: 200), // Add your image to assets
            ),
            decoration: getPageDecoration(),
          ),
          // Slide 3
          PageViewModel(
            title: "Fast Delivery & Reliable Support",
            body:
                "Enjoy fast deliveries, live tracking, and personalized support whenever you need it.",
            image: Center(
              child: Image.asset('assets/images/order.png',
                  height: 200), // Add your image to assets
            ),
            decoration: getPageDecoration(),
          ),
        ],
        // Onboarding navigation
        onDone: () => goToHome(context),
        onSkip: () => goToHome(context),
        showSkipButton: true,
        skip: const Text("Skip"),
        next: const Icon(Icons.arrow_forward),
        done: const Text("Get Started",
            style: TextStyle(fontWeight: FontWeight.bold)),
        dotsDecorator: getDotsDecorator(),
      ),
    );
  }

  void goToHome(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    ); // Replace with your home screen route
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 16),
      bodyPadding: EdgeInsets.all(16.0),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Color.fromARGB(255, 144, 202, 249),
    );
  }

  DotsDecorator getDotsDecorator() {
    return DotsDecorator(
      size: const Size(10, 10),
      color: Colors.grey,
      activeSize: const Size(22, 10),
      activeShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      activeColor: Colors.blue,
    );
  }
}
