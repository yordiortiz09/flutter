import 'package:flutter/material.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:flutter_application_2/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
              color: Colors.indigoAccent,
              iconTheme: IconThemeData(color: Colors.deepPurple)),
        ));
  }
}
