import 'package:clean_arch_weather_app/core/utilites/custom_widgets/custom_button.dart';
import 'package:clean_arch_weather_app/features/auth_feature/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>();
 
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                  labeltext: 'Email',
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Email';
                    }
                  }),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                  labeltext: 'Password',
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  isPassword: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Email';
                    }
                  }),
            ],
          ),
        ),
         custombutton(
          text: 'lohin',
          onPressed: (){

          },
        )
      ],
    );
  }
}
