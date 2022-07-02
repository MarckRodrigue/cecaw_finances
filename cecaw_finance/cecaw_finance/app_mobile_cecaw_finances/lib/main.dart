import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(const DevMobile());
}

class DevMobile extends StatelessWidget {
  const DevMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cecaw App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WelcomePage(),
    );
  }
}
