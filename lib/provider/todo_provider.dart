import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoProvider extends ChangeNotifier
{
  List<String> taskList = [];
  List<String> descriptionList = [];
  List<String> dateList = [];
  List<String> statusList = [];

  Future<void> setTodo(String task,description,date,status)
  async {
    taskList.add(task);
    descriptionList.add(description);
    dateList.add(date);
    statusList.add(status);
    notifyListeners();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setStringList('task', taskList);
    await sharedPreferences.setStringList('description', descriptionList);
    await sharedPreferences.setStringList('date', dateList);
    await sharedPreferences.setStringList('status', statusList);
  }

  Future<void> getTodo()
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    taskList =  sharedPreferences.getStringList('task') ?? taskList;
    descriptionList =  sharedPreferences.getStringList('description') ?? descriptionList;
    dateList =  sharedPreferences.getStringList('date') ?? dateList;
    statusList =  sharedPreferences.getStringList('status') ?? statusList;
    notifyListeners();
  }

  Future<void> updateStatus(bool value,int index)
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    statusList[index] = '$value';
    notifyListeners();
    sharedPreferences.setStringList('status', statusList);
  }


  TodoProvider()
  {
    getTodo();
  }

}