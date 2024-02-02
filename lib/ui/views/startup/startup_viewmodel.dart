import 'package:my_first_app/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authenticationService = locator<AuthenticationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    // 2. Check if the user is logged in
    if (_authenticationService.userLoggedIn()) {
      // 3. Navigate to HomeView
      _navigationService.replaceWith(Routes.advicesView);
    } else {
      // 4. Or navigate to LoginView
      _navigationService.replaceWith(Routes.advicesView);
    }
  }
}
