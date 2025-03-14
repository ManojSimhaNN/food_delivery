import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_quantity_selector.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child) => Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //food image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            cartItem.food.imagePath,
                            height: 100,
                            width: 100,
                          ),
                        ),

                        const SizedBox(width: 10),

                        //name and price
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(cartItem.food.name),
                            //increment and decrement quantity
                            QuantitySelector(
                              quantity: cartItem.quantity,
                              food: cartItem.food,
                              onIncrement: () {
                                restaurant.addToCart(
                                  cartItem.food,
                                  cartItem.selectedAddons,
                                );
                              },
                              onDecrement: () {
                                restaurant.removeFromCart(cartItem);
                              },
                            ),
                            //total price
                            Text(
                              "Total price: " '\u{20B9}${cartItem.totalprice}',
                            ),
                          ],
                        ),

                        const SizedBox(
                          width: 10,
                        ),

                        Text(
                          '\u{20B9}${cartItem.food.price}',
                        ),
                      ],
                    ),
                  ),
                  //addons
                  SizedBox(
                    height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 10,
                        right: 10,
                      ),
                      children: cartItem.selectedAddons
                          .map(
                            (addon) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: FilterChip(
                                label: Row(
                                  children: [
                                    //addon name
                                    Text(addon.name),

                                    //addon price
                                    Text(
                                      '(\u{20B9}${addon.price})',
                                    ),
                                  ],
                                ),
                                shape: StadiumBorder(
                                    side: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                )),
                                onSelected: (value) {},
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                                labelStyle: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  )
                ],
              ),
            ));
  }
}
