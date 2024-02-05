import 'package:flutter/material.dart';
import 'package:my_first_app/ui/views/advices/advices_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'advices_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'idAdvice'),
])
class AdvicesView extends StackedView<AdvicesViewModel> with $AdvicesView {
  const AdvicesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdvicesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ID: ${viewModel.adviceById.id}"),
                Text("Advice: ${viewModel.adviceById.advice}"),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(controller: idAdviceController),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          viewModel.getVerseById(idAdviceController.text),
                      child: const Text('Procurar'),
                    )
                  ],
                ),
              ],
            ), // Acesse o verso do controlador
          ),
          ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ID: ${viewModel.advice.id}"),
                Text("Advice: ${viewModel.advice.advice}"),
                ElevatedButton(
                    onPressed: viewModel.fetchVerse,
                    child: const Text('random'))
              ],
            ), // Acesse o verso do controlador
          ),
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: viewModel.fetchVerse),
    );
  }

  @override
  AdvicesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AdvicesViewModel();
}

//horario, to trab agora, eu posso ate marcar la no onboaard? e se por exemplo, eu combinei que trabalho de tarde, mas e se por um acaso eu puder puder trabalhar de manha?
//eu cumpro meu horario de manha, mas alguem me chamou de tarde que seria o meu horario padrao
//como seria isso? seria aquele joguinho do habbo

//e sobre como eles usam o stacked, se fazem pelo generate ou nao, pq pelo q e u vi parece q eh algo novo, a maioria dos videos q vi o pessoal usando eles escreviam tudo na mao respeitando
// a arquitetura.

//tambem gostaria de um bom exemplo, um projeto pra eu dar uma olhada em como  eh o padrao de vcs, sabe os services, etc, os consumos de api, etc
