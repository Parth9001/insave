import 'package:flutter/material.dart';
// import 'login.dart';
// import 'home.dart';
// import 'transactions.dart';
import 'add_transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AddTransactionPage(), // Set LoginPage as the home
    );
  }
}
