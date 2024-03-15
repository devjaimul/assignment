/*Consider a Dart program managing a list of fruits. Each fruit has attributes like name, color, and price.

Create a Dart list named fruits with at least three fruits, represented as maps.

Write a function displayFruitDetails that takes the fruits list as a parameter and
prints out the details of each fruit.

Implement a function applyPriceDiscount() that takes the fruits list and a discount percentage
as parameters. This function should update the price of each fruit by applying the discount.*/

void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0},
  ];

  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);


  applyPriceDiscount(fruits, 10);


  print("\nFruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruitsList) {
  for (var fruit in fruitsList) {
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruitsList, double discountPercentage) {
  for (var fruit in fruitsList) {
    double discountedPrice = fruit['price'] * (1 - discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}
