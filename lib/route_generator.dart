import 'package:flutter/material.dart';
import 'package:softech_user_app/views/forgetPassword_screen.dart';
import 'package:softech_user_app/views/nav_home_screen.dart';
import 'package:softech_user_app/views/resetPassword.dart';
import 'package:softech_user_app/views/signin_screen.dart';
import 'package:softech_user_app/views/splash_screen.dart';
import 'package:softech_user_app/views/task_add_screen.dart';
import 'package:softech_user_app/views/task_screen.dart';

// Define route names as constants for better maintainability
const String splashRoute = '/';
const String loginRoute = '/signin';
const String forgetPasswordRoute = '/forgetPassword';
const String resetPasswordRoute = '/resetPassword';
const String navHomeRoute = '/navHome';
const String TaskScreenRoute = '/taskScreen';
const String taskAddScreenRoute = '/taskAddScreen';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case loginRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => const ForgetpasswordScreen(),
        ); // Update with actual ForgetPasswordScreen when implemented
      case resetPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => const ResetpasswordScreen(),
        ); // Update with actual ResetPasswordScreen when implemented
      case splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        ); // Update with actual SplashScreen when implemented
      case navHomeRoute:
        return MaterialPageRoute(
          builder: (_) => const NavHomeScreen(),
        ); // Update with actual NavHomeScreen when implemented
      case TaskScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const TaskScreen(),
        ); // Update with actual TaskScreen when implemented
      case taskAddScreenRoute:
        return MaterialPageRoute(
          builder: (_) =>
              const TaskAddScreen(), // Update with actual TaskAddScreen when implemented
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return const Scaffold(
          body: Center(child: Text('Something wrong in routes')),
        );
      },
    );
  }
}
