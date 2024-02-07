import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'teste_snack_model.dart';

class TesteSnack extends StackedView<TesteSnackModel> {
  const TesteSnack({super.key});

  @override
  Widget builder(
    BuildContext context,
    TesteSnackModel viewModel,
    Widget? child,
  ) {
    return const SizedBox.shrink();
  }

  @override
  TesteSnackModel viewModelBuilder(
    BuildContext context,
  ) =>
      TesteSnackModel();
}
