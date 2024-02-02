// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String IdAdviceValueKey = 'idAdvice';

final Map<String, TextEditingController> _AdvicesViewTextEditingControllers =
    {};

final Map<String, FocusNode> _AdvicesViewFocusNodes = {};

final Map<String, String? Function(String?)?> _AdvicesViewTextValidations = {
  IdAdviceValueKey: null,
};

mixin $AdvicesView {
  TextEditingController get idAdviceController =>
      _getFormTextEditingController(IdAdviceValueKey);

  FocusNode get idAdviceFocusNode => _getFormFocusNode(IdAdviceValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_AdvicesViewTextEditingControllers.containsKey(key)) {
      return _AdvicesViewTextEditingControllers[key]!;
    }

    _AdvicesViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _AdvicesViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_AdvicesViewFocusNodes.containsKey(key)) {
      return _AdvicesViewFocusNodes[key]!;
    }
    _AdvicesViewFocusNodes[key] = FocusNode();
    return _AdvicesViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    idAdviceController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    idAdviceController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          IdAdviceValueKey: idAdviceController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _AdvicesViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _AdvicesViewFocusNodes.values) {
      focusNode.dispose();
    }

    _AdvicesViewTextEditingControllers.clear();
    _AdvicesViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get idAdviceValue => this.formValueMap[IdAdviceValueKey] as String?;

  set idAdviceValue(String? value) {
    this.setData(
      this.formValueMap..addAll({IdAdviceValueKey: value}),
    );

    if (_AdvicesViewTextEditingControllers.containsKey(IdAdviceValueKey)) {
      _AdvicesViewTextEditingControllers[IdAdviceValueKey]?.text = value ?? '';
    }
  }

  bool get hasIdAdvice =>
      this.formValueMap.containsKey(IdAdviceValueKey) &&
      (idAdviceValue?.isNotEmpty ?? false);

  bool get hasIdAdviceValidationMessage =>
      this.fieldsValidationMessages[IdAdviceValueKey]?.isNotEmpty ?? false;

  String? get idAdviceValidationMessage =>
      this.fieldsValidationMessages[IdAdviceValueKey];
}

extension Methods on FormStateHelper {
  setIdAdviceValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[IdAdviceValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    idAdviceValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      IdAdviceValueKey: getValidationMessage(IdAdviceValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _AdvicesViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _AdvicesViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      IdAdviceValueKey: getValidationMessage(IdAdviceValueKey),
    });
