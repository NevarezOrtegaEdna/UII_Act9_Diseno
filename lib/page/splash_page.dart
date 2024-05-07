import 'package:flutter/material.dart';
import 'package:nevarez/core/color.dart';
import 'package:nevarez/widgets/bottom_nav.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 25),
            const Text(
              'Encuentra un hogar aquí',
              style: TextStyle(
                fontSize: 22.0,
                letterSpacing: 1.8,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Todo a tu alcance',
              style: TextStyle(
                color: grey,
                fontSize: 16,
                letterSpacing: 1.8,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 450,
              width: 450,
              child: Image.asset('assets/images/Asset1.png'),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const BottomNavBar()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16), // Espacio adicional entre botones
            TextButton(
              onPressed: () {},
              child: Text(
                'Crear una cuenta',
                style: TextStyle(
                  color: black.withOpacity(0.7),
                  fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                '¿Olvidaste tu contraseña?',
                style: TextStyle(
                  color: black.withOpacity(0.4),
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
