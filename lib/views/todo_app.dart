import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_11am/provider/todo_provider.dart';

import '../provider/theme_provider.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
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
      body: Consumer<TodoProvider>(
        builder: (context, value, child) => ListView.builder(
          itemBuilder: (context, index) => ListTile(
            title: Text(value.taskList[index]),
            subtitle: Text(value.descriptionList[index]),
            trailing: Text(value.dateList[index]),
            leading: Checkbox(
              value: bool.parse(value.statusList[index]),
              onChanged: (v) {
                value.updateStatus(v!, index);
              },
            ),
          ),
          itemCount: value.statusList.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DateTime dateTime = DateTime.now();
          String task = 'Garaba';
          String description = 'At G9 Vesu !';
          String date = '${dateTime.hour}:${dateTime.minute}';
          String status = 'false';
          Provider.of<TodoProvider>(context, listen: false)
              .setTodo(task, description, date, status);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// task
// description
// date
// complete or incomplete

// todo : shared preference connect : CRUD, status
// contact diary app :
//

