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
      inputDecorationTheme:  InputDecorationTheme(
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
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
            fixedSize: const Size.fromWidth(double.maxFinite),
            padding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
                fontSize: 16
            ),
        ),
      )
      ),
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
