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
        body: !viewModel.isBusy
            ? Padding(
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
                            final moeda = await viewModel
                                .showMoedas2BottomSheet(viewModel.moedaIn);

                            viewModel.selecionarMoedaIn(moeda);
                          },
                          child: viewModel.busy(viewModel.moedaIn)
                              ? const CircularProgressIndicator(
                                  color: Colors.black,
                                ) // Exibe um indicador de carregamento quando ocupado
                              : Text(viewModel.moedaIn.code),
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
                            final moeda = await viewModel
                                .showMoedas2BottomSheet(viewModel.moedaOut);

                            viewModel.selecionarMoedaOut(moeda);
                          },
                          child: viewModel.busy(viewModel.moedaOut)
                              ? const CircularProgressIndicator(
                                  color: Colors.black,
                                ) // Exibe um indicador de carregamento quando ocupado
                              : Text(viewModel.moedaOut.code),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () => viewModel.converter(input),
                        child: const Text('CONVERTER')),
                    const SizedBox(
                      width: 3,
                    ),
                    !viewModel.busy(viewModel.result)
                        ? Text('Resultado: ${viewModel.result}')
                        : const CircularProgressIndicator()
                  ],
                ),
              )
            : const Text('carrega'));
  }

  @override
  ConversorViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ConversorViewModel();
}
