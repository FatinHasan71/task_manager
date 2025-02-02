import 'package:flutter/material.dart';
import 'package:task_manager/widgets/screen_background.dart';

import '../../utils/app_colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const String name = '/sign-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ScreenBackground(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Text(
                'Get Started With',
                style: textTheme.titleLarge,
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.themeColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      fixedSize: Size.fromWidth(double.maxFinite),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 16
                    )
                  ),
                  onPressed: () {},
                  child: Icon(Icons.arrow_circle_right_outlined)),
            ],
          ),
        ),
      )),
    );
  }
}
