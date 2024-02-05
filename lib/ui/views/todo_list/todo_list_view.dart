import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_first_app/ui/views/todo_list/components/todo_tile.dart';
import 'package:stacked/stacked.dart';

import 'todo_list_viewmodel.dart';

class TodoListView extends StackedView<TodoListViewModel> {
  const TodoListView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TodoListViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.createNewTask(context),
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: viewModel.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: viewModel.toDoList[index][0],
            onChanged: (value) => viewModel.checkBoxChanged(false, index),
            taskCompleted: viewModel.toDoList[index][1],
            deleteFunction: (context) => viewModel.deleteTodo(index),
          );
        },
      ),
    );
  }

  @override
  TodoListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TodoListViewModel();
}
