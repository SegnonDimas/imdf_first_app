import 'package:first_app/pages/counter_provider.dart';
import 'package:first_app/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Debut : la fonction principale void main()
void main() {
  runApp(const MyApp());
}
// Fin : la fonction principale void main()

// code de MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ChangeNotifierProvier de Provider
    return ChangeNotifierProvider(
      create: (BuildContext context) => Counter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // Define the default brightness and colors.
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
          ),
        ),
        home: const CounterPage(),
      ),
    );
  }
}
