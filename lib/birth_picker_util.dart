abstract class BirthPickerUtil {
  static bool isInteger(String value) {
    if (value.isEmpty) return false;
    return int.tryParse(value) != null;
  }

  static bool isValidDate(int year, int month, int day) {
    try {
      DateTime date = DateTime(year, month, day);
      return date.year == year && date.month == month && date.day == day;
    } catch (e) {
      return false;
    }
  }
}
