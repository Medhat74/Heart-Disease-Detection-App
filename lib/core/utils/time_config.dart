class TimeConfig{
  static DateTime now = DateTime.now();
  static getCurrentTime()
  {
   String convertedDateTime = "${now.year.toString()}-${now.month.toString().padLeft(2,'0')}-${now.day.toString().padLeft(2,'0')} ${now.hour.toString().padLeft(2,'0')}-${now.minute.toString().padLeft(2,'0')}";
   return convertedDateTime;
  }


}