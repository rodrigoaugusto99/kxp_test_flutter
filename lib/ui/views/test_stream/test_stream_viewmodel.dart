import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/services/counter_by_seconds_service.dart';
import 'package:stacked/stacked.dart';

class TestStreamViewModel extends StreamViewModel<int> {
  final _counterBySecondsService = locator<CounterBySecondsService>();

  @override
  Stream<int> get stream => _counterBySecondsService.epochUpdatesNumbers();
}
