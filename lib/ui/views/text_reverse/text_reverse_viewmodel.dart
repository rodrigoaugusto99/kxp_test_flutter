import 'package:my_first_app/ui/views/text_reverse/text_reverse_view.form.dart';
import 'package:stacked/stacked.dart';

class TextReverseViewModel extends FormViewModel {
  String get reversedText =>
      hasReverseInput ? reverseInputValue!.split('').reversed.join('') : '----';
}
