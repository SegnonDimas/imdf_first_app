import 'package:first_app/pages/stories.dart';
import 'package:flutter/material.dart';

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
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        //darkTheme: ThemeData.dark(),
        home: StoryPage());
  }
}

// autre code
