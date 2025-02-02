import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/sign_in_screen.dart';
import 'package:task_manager/ui/screens/splash_screen.dart';
import 'package:task_manager/utils/app_colors.dart';

class TaskManagerAPp extends StatelessWidget {
  const TaskManagerAPp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,
          textTheme: const TextTheme(
              titleLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,

      )),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        fillColor: Colors.white,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      )),
      onGenerateRoute: (RouteSettings settings) {
        late Widget widget;
        if (settings.name == SplashScreen.name) {
          widget = const SplashScreen();
        } else if (settings.name == SignInScreen.name) {
          widget = const SignInScreen();
        }
        return MaterialPageRoute(builder: (_) => widget);
      },
    );
  }
}
