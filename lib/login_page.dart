import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = const Color(0xffff5678);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  width: 400.0,
                  image: AssetImage("images/onboarding-reading.png"),
                ),
                SizedBox(
                  height: 50.0,
                  child: Column(
                    children: [
                      Text(
                        "Embrace the Power of Reading".toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text("Discover, Engage, and Explore"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(200.0, 45.0),
                    foregroundColor: primaryColor,
                    side: BorderSide(width: 1.0, color: primaryColor),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 12,
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
        ),
      ),
    );
    ;
  }
}
