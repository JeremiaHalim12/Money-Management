import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:money_management/pages/test_input.dart';
import 'firebase_options.dart';
import 'package:money_management/pages/google_sign_in_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputMoneyPage(),
    );
  }
}