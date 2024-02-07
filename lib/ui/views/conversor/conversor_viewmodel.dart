import 'package:my_first_app/app/app.bottomsheets.dart';
import 'package:my_first_app/app/app.dialogs.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/app/models/moeda_model.dart';
import 'package:my_first_app/services/api_converter_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ConversorViewModel extends FutureViewModel<List<MoedaModel>> {
  @override
  Future<List<MoedaModel>> futureToRun() async {
    final moedas = await _apiConverter.getMoedas();
    return moedas;
  }

  final _apiConverter = locator<ApiConverterService>();
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _snackBarService = locator<SnackbarService>();

  // List<MoedaModel> _moedas = [];
  MoedaModel _moedaIn = MoedaModel.init();
  MoedaModel _moedaOut = MoedaModel.init();
  String _result = '0';

  //List<MoedaModel> get moedas => _moedas;
  MoedaModel get moedaIn => _moedaIn;
  MoedaModel get moedaOut => _moedaOut;
  String get result => _result;

  Future converter(String valorRaw) async {
    try {
      setBusyForObject(result, true);
      //setBusy(true); fica indicator na tela tdoa
      await Future.delayed(const Duration(seconds: 1));
      final cotacao = await _apiConverter.cotacao(_moedaIn, _moedaOut);

      final valor = double.parse(valorRaw);
      final resultado = valor * cotacao;
      _result = resultado.toStringAsFixed(2);
      notifyListeners();
    } catch (e) {
      // Exceção capturada (erro 404)
      //log(s.toString());
      showErrorDialog(e.toString());
      _snackBarService.showSnackbar(
        message: e.toString(),
        duration: const Duration(seconds: 2),
      );
    } finally {
      setBusyForObject(result, false);
      //setBusy(false);
    }
  }

  Future selecionarMoedaIn(MoedaModel? moedaModel) async {
    if (moedaModel != null) {
      _moedaIn = moedaModel;
      notifyListeners();
    }
  }

  Future selecionarMoedaOut(MoedaModel? moedaModel) async {
    if (moedaModel != null) {
      _moedaOut = moedaModel;
      notifyListeners();
    }
  }

  void switchMoedas() {
    MoedaModel temp = _moedaIn;
    _moedaIn = _moedaOut;
    _moedaOut = temp;
    notifyListeners();
  }

  void showErrorDialog(String error) {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: error,
      description: 'Erro',
    );
  }

//dynamic p retornar qlqr coisa
  Future<dynamic> showCongratulationsDialog() async {
    var response = await _dialogService.showCustomDialog(
      variant: DialogType.confirmacaoConversao,
    );
    //se tiver .data, quero que printe a data
    //se nao, quero que printe o bool
    if (response!.data != null) {
      _snackBarService.showSnackbar(
        message:
            'data: ${response.data.toString()},\nbool: ${response.confirmed.toString()}',
        duration: const Duration(seconds: 2),
      );
      return [response.data, response.confirmed];
      //return response.data;
    } else {
      _snackBarService.showSnackbar(
        message: response.confirmed.toString(),
        duration: const Duration(seconds: 2),
      );
      return response.confirmed;
    }
  }

  // Future<({dynamic x, dynamic y})> showCongratulationsDialog2() async {
  //   var response = await _dialogService.showCustomDialog(
  //     variant: DialogType.confirmacaoConversao,
  //   );
  //   return (x: response!.data, y: response.confirmed);
  // }

  Future showMoedas2BottomSheet(MoedaModel moedaModel) async {
    setBusyForObject(moedaModel, true);
    var response = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.moedas2,
      data: data,
    );
    setBusyForObject(moedaModel, false);
    return response!.data;
  }
}
