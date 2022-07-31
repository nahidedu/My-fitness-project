import 'package:flutter/material.dart';
import 'package:my_fitness/screens/components/background_image.dart';
import 'package:my_fitness/screens/components/circle_button.dart';
import 'package:my_fitness/screens/components/login_credentials.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BackgroundImage(),
                LoginCredentials(),
              ],
            ),
            const CircleButton()
          ],
        ),
      ),
    );
  }
}

