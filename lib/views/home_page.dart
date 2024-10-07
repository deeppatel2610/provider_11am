import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_11am/provider/home_provider.dart';
import 'package:provider_11am/provider/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    HomeProvider providerTrue = Provider.of<HomeProvider>(context,listen: true);
    HomeProvider providerFalse = Provider.of<HomeProvider>(context,listen: false);

    var themeTrue = Provider.of<ThemeProvider>(context);
    var themeFalse = Provider.of<ThemeProvider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Day 2 Provider'),
        actions: [
          Switch(value: themeTrue.isDark, onChanged: (value) {
            themeFalse.changeTheme(value);
          },)
        ],
      ),
      body: Column(
        children: List.generate(
          providerTrue.l1.length,
          (index) => ListTile(
            title: Text(providerTrue.l1[index]),
            trailing: IconButton(onPressed: () {
              providerFalse.removerFromList(index);
            }, icon: const Icon(Icons.delete)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          providerFalse.addToList();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
