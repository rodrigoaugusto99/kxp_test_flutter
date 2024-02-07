import 'package:my_first_app/app/app.bottomsheets.dart';
import 'package:my_first_app/app/app.dialogs.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:my_first_app/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToAdvices() {
    _navigationService.navigateToAdvicesView();
  }

  void navigateToButtons() {
    _navigationService.navigateToSoMuchButtonsView();
  }

  void navigateToTodoList() {
    _navigationService.navigateToTodoListView();
  }

  void navigateToTextReverse() {
    _navigationService.navigateToTextReverseView();
  }

  void navigateToConversor() {
    _navigationService.navigateToConversorView();
  }

  void navigateToStreamTest() {
    _navigationService.navigateToTestStreamView();
  }
}
