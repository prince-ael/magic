import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './blocs/login_bloc.dart';
import './screens/login/login_screen.dart';
import './screens/registration/registration_screen.dart';
import './screens/registration/otp_screen.dart';
import './consts/route_names.dart';

class RouteConfig {
  Route routes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.loginScreen:
        return loginScreen();
      case RouteNames.registrationScreen:
        return registrationScreen();
      case RouteNames.otpScreen:
        return otpScreen();
      default:
        return undefinedRoute(settings.name);
    }
  }

  MaterialPageRoute loginScreen() {
    return MaterialPageRoute(
      builder: (context) => MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => LoginBloc())],
        child: LoginScreen(),
      ),
    );
  }

  MaterialPageRoute registrationScreen() =>
      MaterialPageRoute(builder: (context) => RegistrationScreen());

  MaterialPageRoute otpScreen() =>
      MaterialPageRoute(builder: (context) => OtpScreen());

  MaterialPageRoute undefinedRoute(String routeName) => MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text("No Route Defined for $routeName"),
          ),
        ),
      );
}
