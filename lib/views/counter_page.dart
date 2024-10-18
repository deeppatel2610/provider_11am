import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_11am/provider/counter_provider.dart';
import 'package:provider_11am/provider/theme_provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        actions: [
          // Widget - change
          // action - different

          Consumer<ThemeProvider>(
            builder: (context, theme, child) => Switch(
              value: theme.isDark,
              onChanged: (value) {
                theme.changeTheme(value);
              },
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //   image: NetworkImage(
            //       'https://cdn2.vectorstock.com/i/1000x1000/72/91/krishna-vector-417291.jpg'),
            // ),
            ),
        child: Center(
          child: Consumer<CounterProvider>(
            builder: (context, counterProvider, child) => Text(
              counterProvider.counter.toString(),
              style:
                  const TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).updateCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// state - clear storage, dark,light theme

// Chanting Counter App
// save last updated counter
// show 108 * 5 - save
// total counters - 1562
// reset functionality :
// UI should be relative
// User can change bg image
// image - save - asset/img/god1.jpg
// 24 hours.
