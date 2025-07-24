import 'dart:io';

import 'package:flutter/material.dart';
import 'package:softech_user_app/views/signin_screen.dart';

class AuthViewmodel extends ChangeNotifier {
  // controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  // variables
  String _emailFieldError = '';
  String _passwordFieldError = '';
  bool _securePassword = true;
  String _confirmPasswordFieldError = '';
  String _operatingSystem = '';

  // getters
  TextEditingController get getEmailController => _emailController;
  TextEditingController get getPasswordController => _passwordController;
  String get getEmailFieldError => _emailFieldError;
  String get getPasswordFieldError => _passwordFieldError;
  bool get getSecurePassword => _securePassword;
  TextEditingController get getConfirmPasswordController =>
      _confirmPasswordController;
  String get getConfirmPasswordFieldError => _confirmPasswordFieldError;

  // setters
  void setEmailFieldError(String value) {
    _emailFieldError = value;
    notifyListeners();
  }

  void setConfirmPasswordFieldError(String value) {
    _confirmPasswordFieldError = value;
    notifyListeners();
  }

  void setPasswordFieldError(String value) {
    _passwordFieldError = value;
    notifyListeners();
  }

  void setSecurePassword() {
    _securePassword = !_securePassword;
    notifyListeners();
  }

  //validation methods
  bool emailValidation() {
    if (_emailController.text.isEmpty) {
      setEmailFieldError('Please Enter Email');
      return false;
    } else if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(_emailController.text)) {
      setEmailFieldError('Please Enter Valid Email');
      return false;
    } else {
      setEmailFieldError('');
      return true;
    }
  }

  bool forgotPasswordValidation() {
    if (passwordValidation() && confirmPasswordValidation()) {
      return true;
    } else {
      return false;
    }
  }

  bool confirmPasswordValidation() {
    if (_confirmPasswordController.text.isEmpty) {
      setConfirmPasswordFieldError('Password didn\'t matched');
      return false;
    } else if (_confirmPasswordController.text != _passwordController.text) {
      setConfirmPasswordFieldError('Password didn\'t matched');
      return false;
    } else {
      setConfirmPasswordFieldError('');
      return true;
    }
  }

  bool passwordValidation() {
    if (_passwordController.text.isEmpty) {
      setPasswordFieldError('Please Enter Password');
      return false;
    } else if (_passwordController.text.length != 8) {
      setPasswordFieldError('Password length must be of 8 characters');
      return false;
    } else {
      setPasswordFieldError('');
      return true;
    }
  }

  bool signInValidation() {
    if (emailValidation() && passwordValidation()) {
      return true;
    } else {
      return false;
    }
  }

  //splash
  Future<Widget> checkSplash() async {
    //PackageInfo packageInfo = await PackageInfo.fromPlatform();
    //setVersion(packageInfo.version);
    // setBuild(packageInfo.buildNumber);

    if (Platform.isAndroid) {
      _operatingSystem = 'Android';
    } else {
      _operatingSystem = 'iOS';
    }
    //TODO: ENABLE FCM
    // _fcmToken = await _firebaseMessaging.getToken();
    // print("fcm token: $_fcmToken");
    // final authToken =
    //     await _sharedPref.read(SharedPreferencesKeys.authToken.text);
    await Future.delayed(const Duration(seconds: 4), () {});
    // if (authToken == null) {
    //   return const IntroSlidesScreen();
    // } else {

    // }

    Widget routeTo = const SignInScreen();
    // await callSplash(showLoader: false).then((value) async {
    //   if (value) {
    //     routeTo = const SignInScreen();
    //   } else {
    //     routeTo = const SignInScreen();
    //   }
    // });
    return routeTo;
  }

  // Future<bool> callSplash({required bool showLoader}) async {
  //   if (showLoader) {
  //     //EasyLoading.show(status: 'Please Wait...');
  //   }
  //   try {
  //     final AuthResponse response = await _authApiServices.splashApi();
  //     if (response.isSuccess!) {
  //       setAuthResponse(response);
  //       EasyLoading.dismiss();
  //       return true;
  //     } else {
  //       EasyLoading.showError(response.message!);
  //       return false;
  //     }
  //   } catch (e) {
  //     EasyLoading.showError(e.toString());
  //     return false;
  //   }
  // }

  // clear fields
  void clearfields() {
    _emailController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();

    _emailFieldError = '';
    _passwordFieldError = '';
    _securePassword = true;
    _confirmPasswordFieldError = '';
    notifyListeners();
  }
}
