import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Image.asset('assets/logo.jpg'),
          ElevatedButton(onPressed: () {

          },
           child: const Text('Skip')),
        ],
      ),
    );
  }
}
