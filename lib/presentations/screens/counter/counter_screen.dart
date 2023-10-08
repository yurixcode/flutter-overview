import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const name = "counter_screen";

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
      ),
      body: SizedBox(
          child: Center(
        child: Text("AXO: 10", style: Theme.of(context).textTheme.titleLarge),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
