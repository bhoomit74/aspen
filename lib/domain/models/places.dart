class Place {
  final String name;
  final String description;
  final String rating;
  final String imagePath;
  final String travelDays;
  final String price;

  Place(
      {required this.name,
      this.description = "",
      required this.rating,
      required this.imagePath,
      required this.travelDays,
      required this.price});
}
