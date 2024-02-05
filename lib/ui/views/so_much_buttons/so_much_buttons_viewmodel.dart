import 'package:my_first_app/app/app.bottomsheets.dart';
import 'package:my_first_app/app/app.dialogs.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SoMuchButtonsViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void showBottomSheet2() {
    _bottomSheetService.showBottomSheet(
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  //   enum BottomSheetType {
//   notice,
//   selectDaysOfWeek,
// }

//   void setupBottomSheetUi() {
//   final bottomsheetService = locator<BottomSheetService>();

//   final Map<BottomSheetType, SheetBuilder> builders = {
//     BottomSheetType.notice: (context, request, completer) =>
//         NoticeSheet(request: request, completer: completer),
//     BottomSheetType.selectDaysOfWeek: (context, request, completer) =>
//         SelectDaysOfWeekSheet(request: request, completer: completer),
//   };

//   bottomsheetService.setCustomSheetBuilders(builders);
// }
}
