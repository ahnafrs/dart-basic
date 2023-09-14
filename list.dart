class Product {
  String name;
  double price;

  Product(this.name, this.price);

  @override
  String toString() {
    return '$name - \$${price.toStringAsFixed(2)}';
  }
}

void main() {
  // Create a list of Product objects
  List<Product> products = [
    Product('Widget', 12.99),
    Product('Gadget', 9.95),
    Product('Doohickey', 19.99),
  ];

  // Print the list of products
  print('List of Products:');
  for (var product in products) {
    print(product);
  }

  // Calculate the total price of all products
  double totalPrice = products.fold(0, (sum, product) => sum + product.price);
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  // Find the most expensive product
  Product mostExpensive = products.reduce((current, next) {
    return current.price > next.price ? current : next;
  });
  print('Most Expensive Product: $mostExpensive');
}
