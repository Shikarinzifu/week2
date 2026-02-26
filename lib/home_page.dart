import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, counterModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Home Page"),
            backgroundColor:
                Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Center(
            child: Text(
              '${counterModel.counter}',
              style: const TextStyle(fontSize: 24),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: counterModel.increment,
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}