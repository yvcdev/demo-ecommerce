class Product {
  final String name;
  final String? image;
  final double price;
  final int quantity;

  Product(
      {required this.name,
      this.image,
      required this.price,
      required this.quantity});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        name: json['name'],
        image: json['image'],
        price: json['price'],
        quantity: json['quantity']);
  }
}
