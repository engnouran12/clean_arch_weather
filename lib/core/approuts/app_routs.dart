import 'package:clean_arch_weather_app/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Approuts {
  static const String kMain = '/';
  static const String kLogin = '/login';
  static const String kSignUp = '/signup';
}
  final route = GoRouter(
      initialLocation: Approuts.kMain,
      errorPageBuilder: (context, state) =>
          const MaterialPage(child: Scaffold(body: Text('Not Found'))),
      routes: [
        GoRoute(
          path: Approuts.kMain,
          builder: (context, state) => const SplashScreen(),
        ),
        // GoRoute(
        //     path:Approuts.kLogin,
        //     // builder: (context, state) => BlocProvider(
        //     //       create: (context) => sl<LoginCubit>(),
        //          // child: 
        //       // builder:  (context, state) =>  const LoginScreen(),
        //         ),
            //     GoRoute(
            // path:Approuts.kLogin,
           
            //   // builder:  (context, state) =>  const SignUpScreen(),
            //     ),
      ]);

