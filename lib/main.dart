import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding',
      home: OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = const Color(0xFF64B5F6);
    return Scaffold(
      body: Center(
        child: Wrap(
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.account_box),
                Text("WELCOME"),
              ],
            ),
            const Image(
              width: 400.0,
              image: AssetImage("images/onboarding-1.png"),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size(200.0, 50.0),
                  foregroundColor: primaryColor,
                  side: BorderSide(width: 1.0, color: primaryColor)),
              child: const Text("Sign In"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  minimumSize: const Size(200.0, 50.0),
                  shadowColor: const Color(0xFFFFFFFF)),
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}

// TODO: will use secondpage when needed
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        backgroundColor: Colors.yellow[700],
      ),
      body: const Center(
        child: Image(
          image: AssetImage('images/illustration_1.png'),
          height: 400,
        ),
      ),
    );
  }
}
