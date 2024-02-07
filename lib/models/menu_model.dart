class MenuModel {
  final String name;
  final int price;
  const MenuModel({required this.name, required this.price});
  factory MenuModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'name': String name,
        'price': int price,
      } =>
        MenuModel(name: name, price: price),
      _ => throw const FormatException('뭔가 이상해')
    };
  }
}
