import 'package:my_first_app/ui/views/text_reverse/text_reverse_view.form.dart';
import 'package:stacked/stacked.dart';

class TextReverseViewModel extends FormViewModel {
  String get reversedText =>
      hasReverseInput ? reverseInputValue!.split('').reversed.join('') : '----';
}

class TextReverseValidators {
  static String? validateReverseText(String? value) {
    if (value == null) {
      return null;
    }
    if (value == '') {
      return 'string vazia';
    }

    if (value.contains(RegExp(r'[0-9]'))) {
      return 'No numbers allowed';
    }
    return null;
  }
}
