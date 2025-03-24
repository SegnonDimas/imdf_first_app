import 'package:first_app/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/counter_provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(":::::: BUILD REEXECUTED ::::::");
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: "Counter Provider Page",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<Counter>(builder: (context, counterProvider, child) {
          print(":::::: APPTEXT REEXECUTED ::::::");
          return AppText(
            text: "${counterProvider?.counter}",
            fontSize: 50,
          );
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            onPressed: context.read<Counter>().increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            onPressed: context.read<Counter>().decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
