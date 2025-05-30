import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(SchoolApp());
}

class SchoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Escola App',
      initialRoute: '/',
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}