import 'package:flutter/material.dart';
import 'package:softech_user_app/views/forgetPassword_screen.dart';
import 'package:softech_user_app/views/signin_screen.dart';

const String loginRoute = '/signin';
const String forgetPasswordRoute = '/forgetPassword';

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
