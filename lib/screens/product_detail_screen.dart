import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  final String productName;
  final String productDesc;
  final String imageAdd;
  final List categories;
  final int reviews;
  final double productPrice;

  const ProductDetailScreen(
      {Key? key,
      required this.productName,
      required this.productDesc,
      required this.imageAdd,
      required this.categories,
      required this.reviews,
      required this.productPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(37, 37, 37, 1),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 21,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: <Widget>[
            Container(
              width: 50,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromRGBO(59, 59, 59, 1),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 18,
                  )),
            )
          ],
          elevation: 0,
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(37, 37, 37, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                    ),
                  ),
                  width: size.width,
                  height: 200,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Positioned(
                        left: 70,
                        top: 26,
                        child: Text(
                          '$productName',
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 75,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(255, 255, 255, 0.07),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -170,
                        bottom: -170,
                        child: Text(
                          '$productName',
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 75,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(37, 37, 37, 0.1),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 50,
                          child: Hero(
                            tag: '$productName',
                            child: Image.asset(
                              imageAdd,
                              width: size.width / 1.2,
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: size.width,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(241, 242, 247, 1),
                            borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          categories[0],
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(37, 37, 37, 1),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          size: 24,
                          color: const Color.fromRGBO(233, 234, 241, 1),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    productName,
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '($reviews reviews)',
                        style: const TextStyle(fontSize: 14),
                      ),
                      Text(
                        '\$ $productPrice',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Description',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$productDesc',
                        overflow: TextOverflow.visible,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(37, 37, 37, 1),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 220,
                          height: 70,
                          margin: const EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: const LinearGradient(
                              colors: [
                                const Color.fromRGBO(255, 141, 106, 1),
                                const Color.fromRGBO(241, 112, 72, 1),
                                const Color.fromRGBO(255, 152, 120, 1),
                                const Color.fromRGBO(242, 180, 162, 1),
                                const Color.fromRGBO(255, 153, 124, 1),
                                const Color.fromRGBO(255, 148, 114, 1),
                              ],
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Add to Cart',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
