import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'Programming Quiz',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreenOneScreen,
      routes: AppRoutes.routes,
    );
  }
}
