import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key,required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          SizedBox(
            height: 200, // Set a fixed height (adjust as needed)
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                shoe.imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(shoe.description,
              style: TextStyle(color: Colors.grey[600]) ,
            ),
          ),

          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(shoe.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),

                    const SizedBox(height: 5,),
                    //price
                    Text(
                      '\$' + shoe.price,
                      style: const TextStyle(
                          color: Colors.grey
                      ),
                    )

                  ],
                ),
                //plus Button
                Container(
                    padding: const EdgeInsets.all(20),
                    decoration:const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),)),
                    child:const Icon(
                      Icons.add,
                      color: Colors.white,),
                  ),

              ],
            ),
          )

          //button to add to cart


        ],
      ),
    );
  }
}
