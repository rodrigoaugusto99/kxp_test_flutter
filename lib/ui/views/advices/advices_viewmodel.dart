import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/app/models/advice_model.dart';
import 'package:my_first_app/services/api_service.dart';
import 'package:stacked/stacked.dart';

class AdvicesViewModel extends BaseViewModel {
  final _apiService = locator<ApiService>();
  AdviceModel _advice = AdviceModel(advice: '', id: '');
  AdviceModel _adviceById = AdviceModel(advice: '', id: '');
  AdviceModel get advice => _advice;
  AdviceModel get adviceById => _adviceById;

  Future fetchVerse() async {
    _advice = await _apiService.getRandommVerse();
    rebuildUi();
  }

  Future getVerseById(String id) async {
    _adviceById = await _apiService.getVerseById(id);
    rebuildUi();
  }
}
