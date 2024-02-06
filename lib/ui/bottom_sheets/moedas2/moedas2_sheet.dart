import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'moedas2_sheet_model.dart';

class Moedas2Sheet extends StackedView<Moedas2SheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const Moedas2Sheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    Moedas2SheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: ListView.builder(
        itemCount: request.data.length,
        itemBuilder: (context, index) {
          final innerMoeda = request.data[index];
          return ListTile(
            title: Text(innerMoeda.name),
            onTap: () {
              completer!(SheetResponse(data: innerMoeda));
            },
          );
        },
      ),
    );
  }

  @override
  Moedas2SheetModel viewModelBuilder(BuildContext context) =>
      Moedas2SheetModel();
}
