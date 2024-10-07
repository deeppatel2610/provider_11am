import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_11am/provider/home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    // attributes
    // methods

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Text(
          Provider.of<HomeProvider>(context,listen: true).counter.toString(),
          style: const TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<HomeProvider>(context,listen: false).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
