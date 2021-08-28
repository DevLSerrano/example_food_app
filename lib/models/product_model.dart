class ProductModel {
  final int index;
  final String image;
  final bool isStockOff;
  final int valueStockOff;
  final double score;
  final String title;
  final int timeInMinutes;
  final String description =
      'Healthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\nHealthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\nHealthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\nHealthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\nHealthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\nHealthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\nHealthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\nHealthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\nHealthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\nHealthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\nHealthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\nHealthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.\n';
  ProductModel({
    required this.index,
    required this.image,
    required this.score,
    required this.title,
    required this.timeInMinutes,
    this.isStockOff = false,
    this.valueStockOff = 0,
  });
}
