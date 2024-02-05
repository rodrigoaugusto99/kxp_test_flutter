import 'package:flutter/material.dart';
import 'package:my_first_app/ui/views/todo_list/components/my_dialog.dart';
import 'package:stacked/stacked.dart';

class TodoListViewModel extends BaseViewModel {
  List toDoList = [
    ['exemplo', true],
  ];
  final todoController = TextEditingController();

  void addTodo(BuildContext context) {
    toDoList.add([todoController.text, false]);
    notifyListeners();
    Navigator.of(context).pop();
  }

  void editTodo(int index, String editedString) {
    toDoList[index] = editedString;
    notifyListeners();
  }

  void deleteTodo(int index) {
    toDoList.removeAt(index);
    notifyListeners();
  }

  void cancelTodo(BuildContext context) {
    Navigator.of(context).pop();
  }

  void checkBoxChanged(bool taskCompleted, int index) {
    toDoList[index][1] = !toDoList[index][1];
    notifyListeners();
  }

  void createNewTask(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return MyDialog(
          controller: todoController,
          onPressedCancel: () => cancelTodo(context),
          onPressedSave: () => addTodo(context),
        );
      },
    );
  }
}
