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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Counter Value",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  counterModel.counter.toString(),
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
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