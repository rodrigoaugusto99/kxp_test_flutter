// Mocks generated by Mockito 5.4.4 from annotations
// in my_first_app/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;
import 'dart:ui' as _i10;

import 'package:dio/dio.dart' as _i3;
import 'package:flutter/material.dart' as _i8;
import 'package:http/http.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;
import 'package:my_first_app/app/http_service.dart' as _i2;
import 'package:my_first_app/app/models/advice_model.dart' as _i4;
import 'package:my_first_app/app/models/moeda_model.dart' as _i14;
import 'package:my_first_app/services/api_converter_service.dart' as _i13;
import 'package:my_first_app/services/api_service.dart' as _i12;
import 'package:my_first_app/services/authentication_service.dart' as _i11;
import 'package:stacked_services/stacked_services.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeIHttpService_0 extends _i1.SmartFake implements _i2.IHttpService {
  _FakeIHttpService_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDio_1 extends _i1.SmartFake implements _i3.Dio {
  _FakeDio_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAdviceModel_2 extends _i1.SmartFake implements _i4.AdviceModel {
  _FakeAdviceModel_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeClient_3 extends _i1.SmartFake implements _i5.Client {
  _FakeClient_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i6.NavigationService {
  @override
  String get previousRoute => (super.noSuchMethod(
        Invocation.getter(#previousRoute),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#previousRoute),
        ),
        returnValueForMissingStub: _i7.dummyValue<String>(
          this,
          Invocation.getter(#previousRoute),
        ),
      ) as String);

  @override
  String get currentRoute => (super.noSuchMethod(
        Invocation.getter(#currentRoute),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#currentRoute),
        ),
        returnValueForMissingStub: _i7.dummyValue<String>(
          this,
          Invocation.getter(#currentRoute),
        ),
      ) as String);

  @override
  _i8.GlobalKey<_i8.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(
        Invocation.method(
          #nestedNavigationKey,
          [index],
        ),
        returnValueForMissingStub: null,
      ) as _i8.GlobalKey<_i8.NavigatorState>?);

  @override
  void config({
    bool? enableLog,
    bool? defaultPopGesture,
    bool? defaultOpaqueRoute,
    Duration? defaultDurationTransition,
    bool? defaultGlobalState,
    _i6.Transition? defaultTransitionStyle,
    String? defaultTransition,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #config,
          [],
          {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransitionStyle: defaultTransitionStyle,
            #defaultTransition: defaultTransition,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<T?>? navigateWithTransition<T>(
    _i8.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i8.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i6.Transition? transitionClass,
    _i6.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? replaceWithTransition<T>(
    _i8.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i8.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i6.Transition? transitionClass,
    _i6.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  bool back<T>({
    dynamic result,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #back,
          [],
          {
            #result: result,
            #id: id,
          },
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void popUntil(
    _i8.RoutePredicate? predicate, {
    int? id,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #popUntil,
          [predicate],
          {#id: id},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void popRepeated(int? popTimes) => super.noSuchMethod(
        Invocation.method(
          #popRepeated,
          [popTimes],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<T?>? navigateTo<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i8.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateTo,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? navigateToView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
    bool? opaque,
    _i8.Curve? curve,
    Duration? duration,
    bool? fullscreenDialog = false,
    bool? popGesture,
    bool? preventDuplicates = true,
    _i6.Transition? transition,
    _i6.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateToView,
          [view],
          {
            #arguments: arguments,
            #id: id,
            #opaque: opaque,
            #curve: curve,
            #duration: duration,
            #fullscreenDialog: fullscreenDialog,
            #popGesture: popGesture,
            #preventDuplicates: preventDuplicates,
            #transition: transition,
            #transitionStyle: transitionStyle,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? replaceWith<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i8.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWith,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? clearStackAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? clearStackAndShowView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? clearTillFirstAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? clearTillFirstAndShowView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? pushNamedAndRemoveUntil<T>(
    String? routeName, {
    _i8.RoutePredicate? predicate,
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pushNamedAndRemoveUntil,
          [routeName],
          {
            #predicate: predicate,
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);
}

/// A class which mocks [BottomSheetService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBottomSheetService extends _i1.Mock
    implements _i6.BottomSheetService {
  @override
  void setCustomSheetBuilders(Map<dynamic, _i6.SheetBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #setCustomSheetBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<_i6.SheetResponse<dynamic>?> showBottomSheet({
    required String? title,
    String? description,
    String? confirmButtonTitle = r'Ok',
    String? cancelButtonTitle,
    bool? enableDrag = true,
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showBottomSheet,
          [],
          {
            #title: title,
            #description: description,
            #confirmButtonTitle: confirmButtonTitle,
            #cancelButtonTitle: cancelButtonTitle,
            #enableDrag: enableDrag,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i9.Future<_i6.SheetResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i9.Future<_i6.SheetResponse<dynamic>?>.value(),
      ) as _i9.Future<_i6.SheetResponse<dynamic>?>);

  @override
  _i9.Future<_i6.SheetResponse<T>?> showCustomSheet<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i10.Color? barrierColor = const _i10.Color(2315255808),
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    String? barrierLabel = r'',
    dynamic customData,
    R? data,
    bool? enableDrag = true,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomSheet,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #barrierLabel: barrierLabel,
            #customData: customData,
            #data: data,
            #enableDrag: enableDrag,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i9.Future<_i6.SheetResponse<T>?>.value(),
        returnValueForMissingStub: _i9.Future<_i6.SheetResponse<T>?>.value(),
      ) as _i9.Future<_i6.SheetResponse<T>?>);

  @override
  void completeSheet(_i6.SheetResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeSheet,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DialogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDialogService extends _i1.Mock implements _i6.DialogService {
  @override
  void registerCustomDialogBuilders(
          Map<dynamic, _i6.DialogBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerCustomDialogBuilder({
    required dynamic variant,
    required _i8.Widget Function(
      _i8.BuildContext,
      _i6.DialogRequest<dynamic>,
      dynamic Function(_i6.DialogResponse<dynamic>),
    )? builder,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilder,
          [],
          {
            #variant: variant,
            #builder: builder,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<_i6.DialogResponse<dynamic>?> showDialog({
    String? title,
    String? description,
    String? cancelTitle,
    _i10.Color? cancelTitleColor,
    String? buttonTitle = r'Ok',
    _i10.Color? buttonTitleColor,
    bool? barrierDismissible = false,
    _i6.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #buttonTitle: buttonTitle,
            #buttonTitleColor: buttonTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i9.Future<_i6.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i9.Future<_i6.DialogResponse<dynamic>?>.value(),
      ) as _i9.Future<_i6.DialogResponse<dynamic>?>);

  @override
  _i9.Future<_i6.DialogResponse<T>?> showCustomDialog<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i10.Color? barrierColor = const _i10.Color(2315255808),
    bool? barrierDismissible = false,
    String? barrierLabel = r'',
    bool? useSafeArea = true,
    dynamic customData,
    R? data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomDialog,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #barrierLabel: barrierLabel,
            #useSafeArea: useSafeArea,
            #customData: customData,
            #data: data,
          },
        ),
        returnValue: _i9.Future<_i6.DialogResponse<T>?>.value(),
        returnValueForMissingStub: _i9.Future<_i6.DialogResponse<T>?>.value(),
      ) as _i9.Future<_i6.DialogResponse<T>?>);

  @override
  _i9.Future<_i6.DialogResponse<dynamic>?> showConfirmationDialog({
    String? title,
    String? description,
    String? cancelTitle = r'Cancel',
    _i10.Color? cancelTitleColor,
    String? confirmationTitle = r'Ok',
    _i10.Color? confirmationTitleColor,
    bool? barrierDismissible = false,
    _i6.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showConfirmationDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #confirmationTitle: confirmationTitle,
            #confirmationTitleColor: confirmationTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i9.Future<_i6.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i9.Future<_i6.DialogResponse<dynamic>?>.value(),
      ) as _i9.Future<_i6.DialogResponse<dynamic>?>);

  @override
  void completeDialog(_i6.DialogResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeDialog,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [AuthenticationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthenticationService extends _i1.Mock
    implements _i11.AuthenticationService {
  @override
  bool userLoggedIn() => (super.noSuchMethod(
        Invocation.method(
          #userLoggedIn,
          [],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
}

/// A class which mocks [ApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiService extends _i1.Mock implements _i12.ApiService {
  @override
  _i2.IHttpService get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeIHttpService_0(
          this,
          Invocation.getter(#client),
        ),
        returnValueForMissingStub: _FakeIHttpService_0(
          this,
          Invocation.getter(#client),
        ),
      ) as _i2.IHttpService);

  @override
  _i3.Dio get dio => (super.noSuchMethod(
        Invocation.getter(#dio),
        returnValue: _FakeDio_1(
          this,
          Invocation.getter(#dio),
        ),
        returnValueForMissingStub: _FakeDio_1(
          this,
          Invocation.getter(#dio),
        ),
      ) as _i3.Dio);

  @override
  _i9.Future<_i4.AdviceModel> getRandommVerse() => (super.noSuchMethod(
        Invocation.method(
          #getRandommVerse,
          [],
        ),
        returnValue: _i9.Future<_i4.AdviceModel>.value(_FakeAdviceModel_2(
          this,
          Invocation.method(
            #getRandommVerse,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i9.Future<_i4.AdviceModel>.value(_FakeAdviceModel_2(
          this,
          Invocation.method(
            #getRandommVerse,
            [],
          ),
        )),
      ) as _i9.Future<_i4.AdviceModel>);

  @override
  _i9.Future<_i4.AdviceModel> getVerseById(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getVerseById,
          [id],
        ),
        returnValue: _i9.Future<_i4.AdviceModel>.value(_FakeAdviceModel_2(
          this,
          Invocation.method(
            #getVerseById,
            [id],
          ),
        )),
        returnValueForMissingStub:
            _i9.Future<_i4.AdviceModel>.value(_FakeAdviceModel_2(
          this,
          Invocation.method(
            #getVerseById,
            [id],
          ),
        )),
      ) as _i9.Future<_i4.AdviceModel>);

  @override
  _i9.Future<dynamic> delete(
    String? url, {
    dynamic data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {#data: data},
        ),
        returnValue: _i9.Future<dynamic>.value(),
        returnValueForMissingStub: _i9.Future<dynamic>.value(),
      ) as _i9.Future<dynamic>);

  @override
  _i9.Future<dynamic> get(String? url) => (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
        ),
        returnValue: _i9.Future<dynamic>.value(),
        returnValueForMissingStub: _i9.Future<dynamic>.value(),
      ) as _i9.Future<dynamic>);

  @override
  _i9.Future<dynamic> patch(
    String? url, {
    dynamic data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {#data: data},
        ),
        returnValue: _i9.Future<dynamic>.value(),
        returnValueForMissingStub: _i9.Future<dynamic>.value(),
      ) as _i9.Future<dynamic>);

  @override
  _i9.Future<dynamic> post(
    String? url, {
    dynamic data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {#data: data},
        ),
        returnValue: _i9.Future<dynamic>.value(),
        returnValueForMissingStub: _i9.Future<dynamic>.value(),
      ) as _i9.Future<dynamic>);

  @override
  _i9.Future<dynamic> put(
    String? url, {
    dynamic data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {#data: data},
        ),
        returnValue: _i9.Future<dynamic>.value(),
        returnValueForMissingStub: _i9.Future<dynamic>.value(),
      ) as _i9.Future<dynamic>);
}

/// A class which mocks [ApiConverterService].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiConverterService extends _i1.Mock
    implements _i13.ApiConverterService {
  @override
  _i5.Client get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeClient_3(
          this,
          Invocation.getter(#client),
        ),
        returnValueForMissingStub: _FakeClient_3(
          this,
          Invocation.getter(#client),
        ),
      ) as _i5.Client);

  @override
  _i9.Future<List<_i14.MoedaModel>> getMoedas() => (super.noSuchMethod(
        Invocation.method(
          #getMoedas,
          [],
        ),
        returnValue:
            _i9.Future<List<_i14.MoedaModel>>.value(<_i14.MoedaModel>[]),
        returnValueForMissingStub:
            _i9.Future<List<_i14.MoedaModel>>.value(<_i14.MoedaModel>[]),
      ) as _i9.Future<List<_i14.MoedaModel>>);

  @override
  List<_i14.MoedaModel> parseMoedas(String? xmlRaw) => (super.noSuchMethod(
        Invocation.method(
          #parseMoedas,
          [xmlRaw],
        ),
        returnValue: <_i14.MoedaModel>[],
        returnValueForMissingStub: <_i14.MoedaModel>[],
      ) as List<_i14.MoedaModel>);

  @override
  _i9.Future<double> cotacao(
    _i14.MoedaModel? moedaIn,
    _i14.MoedaModel? moedaOut,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #cotacao,
          [
            moedaIn,
            moedaOut,
          ],
        ),
        returnValue: _i9.Future<double>.value(0.0),
        returnValueForMissingStub: _i9.Future<double>.value(0.0),
      ) as _i9.Future<double>);

  @override
  double parseCotacao(
    String? jsonRaw,
    String? search,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #parseCotacao,
          [
            jsonRaw,
            search,
          ],
        ),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);
}
