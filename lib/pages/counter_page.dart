import 'package:first_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterState();
}

class _CounterState extends State<CounterPage> {
  int counter = 0;

  void decrement() {
    counter--;
    setState(() {});
  }

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(":::::: BUILD REEXECUTED ::::::");
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: "Counter Page",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AppText(
          text: "$counter",
          fontSize: 50,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            onPressed: increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            onPressed: decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
