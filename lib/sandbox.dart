import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sandbox"),
        backgroundColor: Colors.grey[200],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.red,
            padding: const EdgeInsets.all(20),
            child: const Text("One"),
          ),
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(20),
            child: const Text("Two"),
          ),
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(20),
            child: const Text("Three"),
          )
        ],
      ),
    );
  }
}
