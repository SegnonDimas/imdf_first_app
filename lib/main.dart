import 'package:first_app/pages/first_page.dart';
import 'package:first_app/pages/page_1.dart';
import 'package:first_app/pages/page_2.dart';
import 'package:first_app/pages/page_3.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
        ),
      ),
      //initialRoute: '/page1',
      routes: <String, WidgetBuilder>{
        '/': (context) => const FirstPage(),
        '/page1': (context) => const Page1(),
        '/page2': (context) => const Page2(),
        '/page3': (context) => const Page3(),
      },
    );
    //home: PageListeAmis());
    //home: ScrollablesWidgetsLearn());

    //home: BasicsWidgetsLearn());
  }
}
