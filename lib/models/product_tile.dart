import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paymo/models/product.dart' as Products;
import 'package:paymo/models/single_product.dart';
class ProductTile extends StatelessWidget {
  final Products.Product products;

  const ProductTile(this.products);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(SingleProduct());
      },

      child:Card(

      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Image.network(
                      products.images[0].src,
                      fit: BoxFit.cover
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Obx(() =>
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: (products.featured.obs.value)
                              ? Icon(Icons.favorite_rounded)
                              : Icon(Icons.favorite_border),
                          onPressed: () {
                            products.featured.obs.toggle();
                          },
                        ),


                      )),
                )
              ],
            ),
            SizedBox(height: 8),
            Text(
              products.name,
              maxLines: 2,
              style:
              TextStyle(fontSize:18,fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            if(products.ratingCount != null)
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      products.ratingCount.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.white,

                    ),
                  ],
                ),
              ),
        SizedBox(height: 8),
            Text(' تومان${products.price}',
            style: TextStyle(fontSize: 20,fontFamily: 'avenir'),
            ),

          ],
        ),
      ),
    ),
    );
  }
}
