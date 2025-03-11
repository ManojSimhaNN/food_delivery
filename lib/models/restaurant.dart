import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy aloo patty with melted tomato, hint of onion and cabbage.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 100.0,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 30,
        ),
        Addon(
          name: "Extra ketchup",
          price: 10,
        ),
        Addon(
          name: "Extra Sause",
          price: 10,
        ),
      ],
    ),

    Food(
      name: "Classic Hamburger",
      description:
          "A juicy aloo patty with melted tomato, hint of onion and cabbage.",
      imagePath: "lib/images/burgers/hamburger.jpg",
      price: 100.0,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 30,
        ),
        Addon(
          name: "Extra ketchup",
          price: 10,
        ),
        Addon(
          name: "Extra Sause",
          price: 10,
        ),
      ],
    ),

    Food(
      name: "Aloo Tikki Burger",
      description:
          "A juicy aloo patty with melted tomato, hint of onion and cabbage.",
      imagePath: "lib/images/burgers/aloo_tikki_burger.png",
      price: 100.0,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 30,
        ),
        Addon(
          name: "Extra ketchup",
          price: 10,
        ),
        Addon(
          name: "Extra Sause",
          price: 10,
        ),
      ],
    ),

    Food(
      name: "Paneer Burger",
      description:
          "A spicy paneer patty with melted tomato, hint of onion and cabbage.",
      imagePath: "lib/images/burgers/paneer_burger.jpg",
      price: 100.0,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 30,
        ),
        Addon(
          name: "Extra ketchup",
          price: 10,
        ),
        Addon(
          name: "Extra Sause",
          price: 10,
        ),
      ],
    ),

    Food(
      name: "Double Patty Burger",
      description:
          "Two juicy aloo patties with melted tomato, hint of onion and cabbage.",
      imagePath: "lib/images/burgers/double_patty_burger.jpg",
      price: 100.0,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 30,
        ),
        Addon(
          name: "Extra ketchup",
          price: 10,
        ),
        Addon(
          name: "Extra Sause",
          price: 10,
        ),
      ],
    ),

    //salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce with creamy Caesar dressing, parmesan cheese, and croutons.",
      imagePath: "lib/images/salads/caeser_salad.jpg",
      price: 150.0,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(
          name: "Extra Chicken",
          price: 50,
        ),
        Addon(
          name: "Extra Cheese",
          price: 30,
        ),
        Addon(
          name: "Extra Dressing",
          price: 20,
        ),
      ],
    ),

    Food(
      name: "Greek Salad",
      description:
          "Fresh cucumbers, tomatoes, red onions, feta cheese, and olives with olive oil dressing.",
      imagePath: "lib/images/salads/greek_salad.jpg",
      price: 140.0,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(
          name: "Extra Feta Cheese",
          price: 40,
        ),
        Addon(
          name: "Extra Olives",
          price: 20,
        ),
        Addon(
          name: "Extra Dressing",
          price: 10,
        ),
      ],
    ),

    Food(
      name: "Garden Salad",
      description:
          "A mix of fresh lettuce, tomatoes, cucumbers, carrots, and onions with house dressing.",
      imagePath: "lib/images/salads/garden_salad.jpg",
      price: 120.0,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(
          name: "Extra Avocado",
          price: 50,
        ),
        Addon(
          name: "Extra Croutons",
          price: 20,
        ),
        Addon(
          name: "Extra Dressing",
          price: 10,
        ),
      ],
    ),

    Food(
      name: "Mediterranean Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers, cherry tomatoes, chickpeas, and lemon dressing.",
      imagePath: "lib/images/salads/quinoa_salad.jpg",
      price: 160.0,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(
          name: "Extra Chickpeas",
          price: 30,
        ),
        Addon(
          name: "Extra Feta Cheese",
          price: 40,
        ),
        Addon(
          name: "Extra Lemon Dressing",
          price: 10,
        ),
      ],
    ),

    Food(
      name: "Avocado Spinach Salad",
      description:
          "Fresh spinach leaves, avocado slices, cherry tomatoes, and walnuts with balsamic dressing.",
      imagePath: "lib/images/salads/avocado_spinach_salad.jpg",
      price: 170.0,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(
          name: "Extra Avocado",
          price: 50,
        ),
        Addon(
          name: "Extra Nuts",
          price: 30,
        ),
        Addon(
          name: "Extra Balsamic Dressing",
          price: 10,
        ),
      ],
    ),

    //sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries served with a side of ketchup.",
      imagePath: "lib/images/sides/french_fries.jpg",
      price: 80.0,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 30,
        ),
        Addon(
          name: "Extra Ketchup",
          price: 10,
        ),
        Addon(
          name: "Extra Mayo",
          price: 15,
        ),
      ],
    ),

    Food(
      name: "Onion Rings",
      description: "Crispy battered onion rings served with a tangy dip.",
      imagePath: "lib/images/sides/onion_rings.jpg",
      price: 90.0,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(
          name: "Extra Cheese Dip",
          price: 30,
        ),
        Addon(
          name: "Extra BBQ Sauce",
          price: 15,
        ),
        Addon(
          name: "Extra Spicy Mayo",
          price: 20,
        ),
      ],
    ),

    Food(
      name: "Garlic Bread",
      description: "Toasted garlic bread with a buttery, herby flavor.",
      imagePath: "lib/images/sides/garlic_bread.jpg",
      price: 100.0,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 40,
        ),
        Addon(
          name: "Extra Butter",
          price: 20,
        ),
        Addon(
          name: "Extra Herbs",
          price: 10,
        ),
      ],
    ),

    Food(
      name: "Mozzarella Sticks",
      description: "Crispy fried mozzarella sticks served with marinara sauce.",
      imagePath: "lib/images/sides/mozzarella_sticks.jpg",
      price: 120.0,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(
          name: "Extra Marinara Sauce",
          price: 20,
        ),
        Addon(
          name: "Extra Cheese",
          price: 30,
        ),
        Addon(
          name: "Extra Spices",
          price: 10,
        ),
      ],
    ),

    Food(
      name: "Coleslaw",
      description:
          "Creamy and refreshing coleslaw made with cabbage and carrots.",
      imagePath: "lib/images/sides/coleslaw.jpg",
      price: 70.0,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(
          name: "Extra Mayo",
          price: 15,
        ),
        Addon(
          name: "Extra Vinegar",
          price: 10,
        ),
        Addon(
          name: "Extra Carrots",
          price: 10,
        ),
      ],
    ),

    //desserts
    Food(
      name: "Chocolate Brownie",
      description: "A rich and fudgy chocolate brownie served warm.",
      imagePath: "lib/images/desserts/chocolate_brownie.jpg",
      price: 120.0,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(
          name: "Extra Chocolate Sauce",
          price: 20,
        ),
        Addon(
          name: "Extra Ice Cream",
          price: 40,
        ),
        Addon(
          name: "Extra Nuts",
          price: 30,
        ),
      ],
    ),

    Food(
      name: "Vanilla Ice Cream",
      description:
          "Classic vanilla ice cream with a smooth and creamy texture.",
      imagePath: "lib/images/desserts/vanilla_ice_cream.jpg",
      price: 80.0,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(
          name: "Extra Chocolate Syrup",
          price: 20,
        ),
        Addon(
          name: "Extra Sprinkles",
          price: 15,
        ),
        Addon(
          name: "Extra Nuts",
          price: 30,
        ),
      ],
    ),

    Food(
      name: "Cheesecake",
      description: "A creamy cheesecake with a buttery biscuit base.",
      imagePath: "lib/images/desserts/cheesecake.jpg",
      price: 150.0,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(
          name: "Extra Strawberry Sauce",
          price: 25,
        ),
        Addon(
          name: "Extra Whipped Cream",
          price: 20,
        ),
        Addon(
          name: "Extra Crust",
          price: 30,
        ),
      ],
    ),

    Food(
      name: "Chocolate Lava Cake",
      description: "A warm chocolate cake with a gooey molten center.",
      imagePath: "lib/images/desserts/chocolate_lava_cake.jpg",
      price: 180.0,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(
          name: "Extra Ice Cream",
          price: 40,
        ),
        Addon(
          name: "Extra Chocolate Drizzle",
          price: 20,
        ),
        Addon(
          name: "Extra Cocoa Powder",
          price: 15,
        ),
      ],
    ),

    Food(
      name: "Fruit Salad",
      description: "A refreshing mix of seasonal fruits with honey and mint.",
      imagePath: "lib/images/desserts/fruit_salad.jpg",
      price: 100.0,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(
          name: "Extra Honey",
          price: 20,
        ),
        Addon(
          name: "Extra Nuts",
          price: 30,
        ),
        Addon(
          name: "Extra Yogurt",
          price: 40,
        ),
      ],
    ),

    //drinks
    Food(
      name: "Classic Mojito",
      description: "A refreshing blend of mint leaves, lime, soda, and sugar.",
      imagePath: "lib/images/drinks/classic_mojito.jpg",
      price: 120.0,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(
          name: "Extra Mint",
          price: 10,
        ),
        Addon(
          name: "Extra Lime",
          price: 15,
        ),
        Addon(
          name: "Extra Sugar Syrup",
          price: 10,
        ),
      ],
    ),

    Food(
      name: "Strawberry Mojito",
      description: "A sweet and tangy mojito with fresh strawberries and mint.",
      imagePath: "lib/images/drinks/strawberry_mojito.jpg",
      price: 140.0,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(
          name: "Extra Strawberries",
          price: 20,
        ),
        Addon(
          name: "Extra Mint",
          price: 10,
        ),
        Addon(
          name: "Extra Lime",
          price: 15,
        ),
      ],
    ),

    Food(
      name: "Mango Mojito",
      description: "A tropical mojito with fresh mango puree and mint leaves.",
      imagePath: "lib/images/drinks/mango_mojito.jpg",
      price: 150.0,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(
          name: "Extra Mango Puree",
          price: 25,
        ),
        Addon(
          name: "Extra Lime",
          price: 15,
        ),
        Addon(
          name: "Extra Sugar Syrup",
          price: 10,
        ),
      ],
    ),

    Food(
      name: "Blueberry Mojito",
      description:
          "A vibrant mojito with crushed blueberries and a hint of lime.",
      imagePath: "lib/images/drinks/blueberry_mojito.jpg",
      price: 160.0,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(
          name: "Extra Blueberries",
          price: 20,
        ),
        Addon(
          name: "Extra Mint",
          price: 10,
        ),
        Addon(
          name: "Extra Lime",
          price: 15,
        ),
      ],
    ),

    Food(
      name: "Watermelon Mojito",
      description: "A refreshing summer mojito with fresh watermelon and mint.",
      imagePath: "lib/images/drinks/watermelon_mojito.jpg",
      price: 130.0,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(
          name: "Extra Watermelon",
          price: 20,
        ),
        Addon(
          name: "Extra Mint",
          price: 10,
        ),
        Addon(
          name: "Extra Sugar Syrup",
          price: 10,
        ),
      ],
    ),
  ];

  //user cart
  final List<CartItem> _cart = [];

  //delivery address
  String _deliveryAddress = "Mounabhargava, 5th cross, Belagumba, Tuamkur";

  /*

  Getters

  */
  List<Food> get menu => _menu;

  List<CartItem> get cart => _cart;

  String get deliveryAddress => _deliveryAddress;

  /*

  Operations

  */

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddon =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddon;
    });

    //if item already exists,increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, adda new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
          addons: [],
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double get totalCartPrice {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //get total number of items in the cart
  int get totalCartItemCount {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery address
  void updateDeliveryAddress(String address) {
    _deliveryAddress = address;
    notifyListeners();
  }
  /*

  Helpers

  */

  //generate receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    //format the date to include upto seconds only
    String formattedDate =
        DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------------");

    for (final cartItem in _cart) {
      receipt.writeln("${cartItem.food.name} x ${cartItem.quantity}");
      receipt.writeln("Price: ${_formatPrice(cartItem.food.price)}");

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Addons: ${_formatAddons(cartItem.selectedAddons)}");
      }

      receipt.writeln();
    }
    receipt.writeln("------------------");
    receipt.writeln();
    receipt.writeln("Total Items: $totalCartItemCount");
    receipt.writeln("Total Price: ${_formatPrice(totalCartPrice)}");
    receipt.writeln();
    receipt.writeln("Delivery Address: $_deliveryAddress");

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price) {
    return "\u{20B9}${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")
        .join(", ");
  }
}
