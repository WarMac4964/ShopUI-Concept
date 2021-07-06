import 'package:flutter/material.dart';
import 'package:shop_ui/screens/product_detail_screen.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final double productPrice;
  final String imageAdd;
  final String productDesc;
  final List categories;
  final int reviews;

  const ProductCard({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.imageAdd,
    required this.productDesc,
    required this.categories,
    required this.reviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(left: 9, right: 9, top: 20, bottom: 30),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(241, 242, 247, 1),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 140,
                height: 120,
                child: Hero(
                  tag: '$productName',
                  child: Image.asset(
                    imageAdd,
                  ),
                ),
              ),
              Text(
                productName,
                style: const TextStyle(
                    color: const Color.fromRGBO(37, 37, 37, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                '\$ $productPrice',
                style: const TextStyle(
                    color: Color.fromRGBO(37, 37, 37, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Positioned(
            bottom: -10,
            right: -10,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(37, 37, 37, 1),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(24),
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  )),
              child: IconButton(
                iconSize: 24,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => ProductDetailScreen(
                              productName: productName,
                              productDesc: productDesc,
                              imageAdd: imageAdd,
                              categories: categories,
                              reviews: reviews,
                              productPrice: productPrice,
                            )),
                  );
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
