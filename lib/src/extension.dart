extension StringExtension on String {
  String get spaceRemoved => replaceAll(r' ', '');
  String get replaceSpacesWithUnderscore => replaceAll(r' ', '_');

  String get removeDiacritics {
    String res = '';

    for (int i = 0; i < this.length; i++) {
      final utf8 = this.codeUnitAt(i);
      if (utf8 < 768 || utf8 > 879) {
        res += this[i];
      }
    }
    return res;
  }
}
