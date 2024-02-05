import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';

import 'conversor_viewmodel.dart';

class ConversorView extends StackedView<ConversorViewModel> {
  ConversorView({Key? key}) : super(key: key);

  String input = '';

  @override
  Widget builder(
      BuildContext context, ConversorViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversor de moedas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Moeda',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => input = value,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final moeda =
                        await viewModel.selectMoeda(viewModel.moedaIn, context);

                    viewModel.selecionarMoedaIn(moeda);
                  },
                  child: Text(viewModel.moedaIn.code),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: IconButton(
                    onPressed: viewModel.switchMoedas,
                    icon: const Icon(Icons.change_circle_outlined),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final moeda = await viewModel.selectMoeda(
                        viewModel.moedaOut, context);

                    viewModel.selecionarMoedaOut(moeda);
                  },
                  child: Text(viewModel.moedaOut.code),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => viewModel.converter(input),
              child: Text('Resultado: ${viewModel.result}'),
            )
          ],
        ),
      ),
    );
  }

  @override
  ConversorViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ConversorViewModel();

  @override
  void onViewModelReady(ConversorViewModel viewModel) =>
      SchedulerBinding.instance
          .addPostFrameCallback((timeStamp) => viewModel.getMoedas());
}
