import 'dart:async';
import 'package:my_first_app/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  late NavigationService _navigationService;

  Completer animationCompleted = Completer();
  late bool isShowingLogoAnimation = false;
  late bool isShowingTextAnimation = false;

  bool isShowingWaveAnimation = false;

  StartupViewModel();
  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    //FlutterNativeSplash.remove();
    isShowingLogoAnimation = true;
    Future.delayed(const Duration(milliseconds: 200)).then((value) {
      isShowingTextAnimation = true;
      /*pq aqui tem notify e no Logo nao? 
      esse notify notifica o text e logo ao mesmo tempo?
      se o Logo nao muda nada sem o notify, entao pq nao ta aqui dentro tbm?*/
      notifyListeners();
    });

    final logoTextAnimationCompleter = Completer();
    Future.delayed(const Duration(seconds: 2))
        .then((value) => logoTextAnimationCompleter.complete());

//pq instanciar dps?
    _navigationService = locator<NavigationService>();

    await showLottieAnimation();
    _navigationService.navigateToHomeView();
  }

  Future<void> showLottieAnimation() async {
    isShowingWaveAnimation = true;
    notifyListeners();
    await animationCompleted.future;
  }
}
