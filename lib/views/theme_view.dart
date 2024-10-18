import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_11am/provider/theme_provider.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme View Screen'),
        actions: [
          Switch(
            value: Provider.of<ThemeProvider>(context).isDark,
            onChanged: (value) {
              Provider.of<ThemeProvider>(context, listen: false)
                  .changeTheme(value);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // Process ->

              SizedBox(
                width: 350,
                height: 350,
                child: Stepper(
                  // type: StepperType.horizontal,
                  currentStep: 2,
                    onStepContinue: () {

                    },
                    onStepCancel: () {

                    },
                    steps: const [
                  Step(title: Text('Step - 1'), content: Text('This is step - 1')),
                  Step(title: Text('Step - 2'), content: Text('This is step - 2')),
                  Step(title: Text('Step - 3'), content: Text('This is step - 3')),
                ]),
              ),
              Text(
                'Example Text',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              buildSizedBox(
                color1: Theme.of(context).colorScheme.primary,
                color2: Theme.of(context).colorScheme.onPrimary,
              ),
              buildSizedBox(
                color1: Theme.of(context).colorScheme.secondary,
                color2: Theme.of(context).colorScheme.onSecondary,
              ),
              buildSizedBox(
                color1: Theme.of(context).colorScheme.error,
                color2: Theme.of(context).colorScheme.onError,
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox({required Color color1, required Color color2}) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Card(
        color: color1,
        child: Center(
          child: SizedBox(
            height: 100,
            width: 100,
            child: Card(
              color: color2,
            ),
          ),
        ),
      ),
    );
  }
}


// ++ ---> range