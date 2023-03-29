import 'dart:js';

import 'package:flutter/material.dart';

import 'package:frontend/screens/login_screen.dart';
import 'package:frontend/screens/otp_verification_screen.dart';
import 'package:frontend/screens/reset_password_screen.dart';
import 'package:frontend/screens/signup_screen.dart';
import 'package:frontend/utils/router_constants.dart';

class Router {
static Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case signUpRoute:
      return MaterialPageRoute(builder: (context) => const SignupScreen());
    case loginInRoute:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case forgotPasswordRoute:
      return MaterialPageRoute(builder: (context) => const ForgotPasswordScreen());
    case otpScreenRoute:
      return MaterialPageRoute(builder: (context) => const OtpScreen());  
    default:
      return MaterialPageRoute(builder: (context) => const SignupScreen());
  }
}
}