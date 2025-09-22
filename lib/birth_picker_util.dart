import 'package:birth_picker/birth_picker_localization.dart';
import 'package:intl/intl.dart';

abstract class BirthPickerUtil {
  static bool isInteger(String value) {
    if (value.isEmpty) return false;
    return int.tryParse(value) != null;
  }

  static bool isValidDate(int year, int month, int day) {
    try {
      DateTime date = DateTime(year, month, day);
      return date.year == year && date.month == month && date.day == day;
    } catch (_) {
      return false;
    }
  }

  static (String, bool) checkDateFormat(String fieldType, String input) {
    bool moveNext = false;
    String correctedValue = input;
    int number = int.parse(input);

    if (fieldType == 'year') {
      moveNext = input.length >= 4;
      if (input == "0000") {
        correctedValue = "0001";
      }
    } else if (fieldType == 'month') {
      moveNext = input.length >= 2;

      if (input == "00") {
        correctedValue = "01";
      } else if (number > 1 && number < 10) {
        moveNext = true;
        correctedValue = "0$number";
      } else if (number > 12) {
        correctedValue = "12";
      }
    } else if (fieldType == 'day') {
      moveNext = input.length >= 2;

      if (input == "00") {
        correctedValue = "01";
      } else if (number > 3 && number < 10) {
        moveNext = true;
        correctedValue = "0$number";
      } else if (number > 31) {
        correctedValue = "31";
      }
    }

    return (correctedValue, moveNext);
  }

  static List<String> getDateSeparator(String locale) {
    return ["/", "/", ""];
  }

  static List<String> getDateOrder(String locale) {
    return ["day", "month", "year"];
  }

  static Map<String, String> getLocalizedDateLabels(String locale) {
    List<String> labels = BirthPickerLocalization.getDateLabels(locale);
    return {'year': labels[0], 'month': labels[1], 'day': labels[2]};
  }
}
