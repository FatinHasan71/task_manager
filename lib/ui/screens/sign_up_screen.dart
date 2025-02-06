import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/widgets/screen_background.dart';

import '../../utils/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ScreenBackground(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
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
                  controller: _emailTEController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _passwordTEController,
                  obscureText: true,
                  decoration: const InputDecoration(hintText: 'Password'),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                    // style: ElevatedButton.styleFrom(
                    //     backgroundColor: AppColors.themeColor,
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(8)),
                    //     fixedSize: const Size.fromWidth(double.maxFinite),
                    //     padding:
                    //         const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    //   foregroundColor: Colors.white,
                    //   textStyle: const TextStyle(
                    //     fontSize: 16
                    //   )
                    // ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.white,
                      size: 22,
                    )),
                const SizedBox(
                  height: 48,
                ),
                Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      _buildSignupSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget _buildSignupSection() {
    return RichText(
      text: TextSpan(
          text: "Don't have an account? ",
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w600),
          children: [
            TextSpan(
                text: 'Sign up',
                style: TextStyle(
                  color: AppColors.themeColor,
                ),
                recognizer: TapGestureRecognizer()..onTap = () {})
          ]),
    );
  }
  @override
  void dispose(){
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}

