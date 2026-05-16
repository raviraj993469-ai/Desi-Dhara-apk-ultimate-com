import 'package:flutter/material.dart';

class AppRouter {
  static const String splash = '/';
  static const String login = '/login';
  static const String customerHome = '/customer/home';
  static const String adminHome = '/admin/home';
  static const String deliveryHome = '/delivery/home';
  static const String productDetails = '/product/details';
  static const String subscription = '/subscription';
  static const String wallet = '/wallet';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case customerHome:
        return MaterialPageRoute(builder: (_) => const CustomerMainScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

// Placeholder widgets to avoid errors during initial setup
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Splash')));
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Login')));
  }
}

class CustomerMainScreen extends StatelessWidget {
  const CustomerMainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Customer Home')));
  }
}
