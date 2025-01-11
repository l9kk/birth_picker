abstract class BirthPickerLocalization {
  static const Map<String, List<String>> localizedDateFormat = {
    'en': ['YYYY', 'MM', 'DD'],
    'ja': ['年', '月', '日'],
    'zh': ['年', '月', '日'],
    'ko': ['연도', '월', '일'],
    'fr': ['Année', 'Mois', 'Jour'],
    'de': ['Jahr', 'Monat', 'Tag'],
    'es': ['Año', 'Mes', 'Día'],
    'ru': ['Год', 'Месяц', 'День'],
    'ar': ['السنة', 'الشهر', 'اليوم'],
    'pt': ['Ano', 'Mês', 'Dia'],
    'it': ['Anno', 'Mese', 'Giorno'],
    'hi': ['वर्ष', 'महीना', 'दिन'],
    'th': ['ปี', 'เดือน', 'วัน'],
    'vi': ['Năm', 'Tháng', 'Ngày'],
    'id': ['Tahun', 'Bulan', 'Hari'],
    'ms': ['Tahun', 'Bulan', 'Hari'],
    'tr': ['Yıl', 'Ay', 'Gün'], // 터키어
    'pl': ['Rok', 'Miesiąc', 'Dzień'],
    'nl': ['Jaar', 'Maand', 'Dag'],
    'sv': ['År', 'Månad', 'Dag'],
  };

  static List<String> getDateFormat(String locale) {
    return localizedDateFormat[locale.split("_").first] ??
        localizedDateFormat["en"]!;
  }
}
