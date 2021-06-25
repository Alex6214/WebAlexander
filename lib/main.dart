import 'package:flutter/material.dart';
import 'package:webprofessional/Routes.dart';

void main() => runApp(MaterialApp(title: "Alexnader Guevara", home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Flurorouter.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      // home: Landing(),
    );
  }
}
