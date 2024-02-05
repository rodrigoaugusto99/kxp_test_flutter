import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'so_much_buttons_viewmodel.dart';

class SoMuchButtonsView extends StackedView<SoMuchButtonsViewModel> {
  const SoMuchButtonsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SoMuchButtonsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => viewModel.showDialog(),
              child: const Text('Option 1'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => viewModel.showBottomSheet(),
              child: const Text('Option 2'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => viewModel.showBottomSheet2(),
              child: const Text('Option 3'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  SoMuchButtonsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SoMuchButtonsViewModel();
}
