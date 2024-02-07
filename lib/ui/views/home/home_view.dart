import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => viewModel.navigateToAdvices(),
              child: const Text('advices'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => viewModel.navigateToButtons(),
              child: const Text('buttons'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => viewModel.navigateToTodoList(),
              child: const Text('todo list'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => viewModel.navigateToTextReverse(),
              child: const Text('text reverse'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => viewModel.navigateToConversor(),
              child: const Text('conversor'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => viewModel.navigateToStreamTest(),
              child: const Text('stream test'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
