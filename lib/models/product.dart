class Product {
  static final List<Product> productList = [
    Product(name: "Kopi", amount: 10, description: "Kopi enak"),
    Product(name: "Teh", amount: 20, description: "Teh enak"),
    Product(name: "Susu", amount: 30, description: "Susu enak"),
  ];

  String name;
  int amount;
  String description;

  Product({required this.name, required this.amount, required this.description});
}