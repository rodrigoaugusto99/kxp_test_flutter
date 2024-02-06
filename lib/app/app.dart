import 'package:my_first_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:my_first_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:my_first_app/ui/views/home/home_view.dart';
import 'package:my_first_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_first_app/ui/views/counter/counter_view.dart';
import 'package:my_first_app/ui/views/login/login_view.dart';
import 'package:my_first_app/services/authentication_service.dart';
import 'package:my_first_app/ui/views/text_reverse/text_reverse_view.dart';
import 'package:my_first_app/services/api_service.dart';
import 'package:my_first_app/ui/views/advices/advices_view.dart';
import 'package:my_first_app/ui/views/so_much_buttons/so_much_buttons_view.dart';
import 'package:my_first_app/ui/views/todo_list/todo_list_view.dart';
import 'package:my_first_app/ui/views/conversor/conversor_view.dart';
import 'package:my_first_app/services/api_converter_service.dart';

import 'package:my_first_app/ui/bottom_sheets/moedas/moedas_sheet.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: CounterView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: TextReverseView),
    MaterialRoute(page: AdvicesView),
    MaterialRoute(page: SoMuchButtonsView),
    MaterialRoute(page: TodoListView),
    MaterialRoute(page: ConversorView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: ApiService, resolveUsing: ApiService.getInstance),
    LazySingleton(classType: ApiConverterService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    StackedBottomsheet(classType: MoedasSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
