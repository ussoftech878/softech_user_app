import 'package:flutter/material.dart';

class AuthViewmodel extends ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _emailFieldError = '';
  String _passwordFieldError = '';
  bool _securePassword = true;

  TextEditingController get getEmailController => _emailController;
  TextEditingController get getPasswordController => _passwordController;
  String get getEmailFieldError => _emailFieldError;
  String get getPasswordFieldError => _passwordFieldError;
  bool get getSecurePassword => _securePassword;

  void setEmailFieldError(String value) {
    _emailFieldError = value;
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

  void clearfields() {
    _emailController.clear();
  }
}
