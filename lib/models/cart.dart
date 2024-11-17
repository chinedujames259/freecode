import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'ZOOM FREAK',
        price: '236',
        imagepath: 'lib/images/images 9.jpg',
        description:
            'The forward-thinking design of his latest signature shoe'),
    Shoe(
        name: 'Air Jordans',
        price: '220',
        imagepath: 'lib/images/images 5.jpg',
        description:
            'you\' ve got the hops and the speed-lace up in the shoes that enhanes'),
    Shoe(
        name: 'Kd Treys',
        price: '240',
        imagepath: 'lib/images/images 7.jpg',
        description:
            'A secure midfoot strap is suited for scoring bings and defensive'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagepath: 'lib/images/images.jpg',
        description:
            'Bouncy cushioning is paired with yet supportive foam for rest'),
  ];

  // list of items in user chart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to the cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
