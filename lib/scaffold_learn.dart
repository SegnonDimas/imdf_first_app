import 'package:flutter/material.dart';

class ScaffoldLearn extends StatefulWidget {
  const ScaffoldLearn({super.key});

  @override
  State<ScaffoldLearn> createState() => _ScaffoldLearnState();
}

class _ScaffoldLearnState extends State<ScaffoldLearn>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const SizedBox(
                height: 200,
                child: Center(
                  child: Text('Contenu du BottomSheet'),
                ),
              );
            },
          );
        },
        child: Icon(Icons.ads_click),
      ),
    );
  }
}
