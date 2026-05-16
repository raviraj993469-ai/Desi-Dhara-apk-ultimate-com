import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'core/router.dart';

void main() {
  runApp(const DesiDharaApp());
}

class DesiDharaApp extends StatelessWidget {
  const DesiDharaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desi Dhara by Rajwari',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRouter.splash,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
