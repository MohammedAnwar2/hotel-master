enum Duration {
  day,
  month,
  year,
}

class Trip {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> features;
  final Duration duration;
  final int pric;
  final String location;
  final bool days;
  final bool month;
  final bool years;

  const Trip({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.features,
    required this.duration,
    required this.pric,
    required this.days,
    required this.month,
    required this.years,
    required this.location,
  });
}
