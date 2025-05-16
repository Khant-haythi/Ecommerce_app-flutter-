import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{

  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'ZOOM FREAK',
        price: '236',
        description: 'The forward-thinking design of his latest signature '
            'shoe.',
        imagePath: 'lib/images/Nike4.png'
    ),
    Shoe(
        name: 'Air Jordans',
        price: '220',
        description: 'You\'ve got the hops and the speed-lace up in shoes',
        imagePath: 'lib/images/nike1.png'
    ),
    Shoe(
        name: 'KD Treys',
        price: '240',
        description: 'A secure midfoot strap is suited for scoring bingers '
            'and defensive',
        imagePath: 'lib/images/Nike2.png'
    ),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        description: 'Bouncy cushioning is paired with soft yet supportive '
            'foam',
        imagePath: 'lib/images/Nike3.png'
    ),
  ];

  //list of item in user cart
List<Shoe> userCart = [];

  //get list of shoes for sale
List<Shoe> getShoeList(){
  return shoeShop;
}

  //get cart
List<Shoe> getUserCart(){
  return userCart;
}

  //add item to cart
void addItemToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
}

  //remove item from cart
void removeItemFromCart(Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();
}

}