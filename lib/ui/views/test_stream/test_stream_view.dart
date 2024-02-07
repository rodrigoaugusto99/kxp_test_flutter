import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'test_stream_viewmodel.dart';

class TestStreamView extends StackedView<TestStreamViewModel> {
  const TestStreamView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TestStreamViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<int>(
          stream: viewModel.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text('Counter: ${snapshot.data}');
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  @override
  TestStreamViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TestStreamViewModel();
}
