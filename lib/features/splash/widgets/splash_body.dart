import 'package:clean_arch_weather_app/core/utilites/custom_widgets/custom_button.dart';
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
          const SizedBox(height: 24),
          const custombutton(),
        ],
      ),
    );
  }
}

