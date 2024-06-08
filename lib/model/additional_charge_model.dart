class AdditionalCharge {
  final int id;
  final String title;
  final double price;
  final bool isPercentage;

  AdditionalCharge({
    required this.id,
    required this.title,
    required this.price,
    this.isPercentage = false,
  });
}
