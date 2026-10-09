// Lab 1
// Jocelyn Lee Shuang Shuang 104561
import 'dart:io';

void main() {
  print("========================================================");
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  int total = 0;
  String? next = "yes";

  while (next == "yes") {
    int price = 0;
    String? size;

    while (price == 0) {
      print("\nPlease enter your pizza size (small, medium, or large): ");
      size = stdin.readLineSync();

      switch (size) {
        case "small":
          price = 5;
          break;
        case "medium":
          price = 7;
          break;
        case "large":
          price = 10;
          break;
        default:
          print("Invalid size.");
      }
    }

    int? quantity;
    while (true) {
      print("\nHow many pizzas would you like to order? ");
      quantity = int.tryParse(stdin.readLineSync()!);
      if (quantity != null && quantity > 0) {
        break;
      } else {
        print("\nInvalid quantity. Please enter a positive integer.");
      }
    }

    total += price * quantity;

    while (true) {
      print("\nWould you like to order another pizza? (yes/no): ");
      next = stdin.readLineSync();
      if (next == "yes" || next == "no") {
        break;
      } else {
        print("Invalid input.\n");
      }
    }
  }

  print("Your Total Payment is: \$$total");
}
