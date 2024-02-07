import 'dart:developer';

class CounterBySecondsService {
  Stream<int> epochUpdatesNumbers() async* {
    for (int counter = 0; counter < 10; counter++) {
      log('$counter');
      yield counter;
      await Future.delayed(const Duration(seconds: 2));
    }
  }
}
