import 'package:flutter/material.dart';
import 'package:shop_ui/data/data.dart';
import 'package:shop_ui/screens/product_detail_screen.dart';
import 'package:shop_ui/widgets/category_bar.dart';
import 'package:shop_ui/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          leading: GestureDetector(
            onTap: () {
              print('Menu Button');
            },
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 15,
                        height: 15,
                        margin: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: const Color.fromRGBO(37, 37, 37, 1),
                        ),
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        margin: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
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
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 15,
                        height: 15,
                        margin: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: const Color.fromRGBO(37, 37, 37, 1),
                        ),
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        margin: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: const Color.fromRGBO(37, 37, 37, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            ),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 40,
                )),
            const SizedBox(
              width: 10,
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              width: 40,
              height: 30,
              child: TextButton(
                onPressed: () {},
                child: Container(),
              ),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(37, 37, 37, 1),
                  borderRadius: BorderRadius.circular(8.0)),
            )
          ],
        ),
        body: Container(
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30.0,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(37, 37, 37, 1),
                          borderRadius: BorderRadius.circular(32.0)),
                      width: size.width,
                      height: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    Positioned(
                      left: 26,
                      bottom: 26,
                      child: const Text(
                        'Headphone',
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
                      left: 25.0,
                      top: -20.0,
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            products[3].imageAdd,
                            width: 150,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(59, 59, 59, 1),
                                    borderRadius: BorderRadius.circular(4.0)),
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  products[3].categories[0],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                products[3].productName,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProductDetailScreen(
                                              productName:
                                                  products[3].productName,
                                              productDesc: products[3]
                                                  .productDescription,
                                              imageAdd: products[3].imageAdd,
                                              categories:
                                                  products[3].categories,
                                              reviews: products[3].reviews,
                                              productPrice:
                                                  products[3].productPrice,
                                            )),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 13,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
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
                                  child: Text(
                                    'Buy Now!',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 26.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Our Products',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                      ),
                      Container(
                        width: 36,
                        height: 36,
                        child: TextButton(
                          child: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 22.0,
                          ),
                          onPressed: () {},
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
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
                      )
                    ],
                  ),
                ),
                CategoryBar(),
                Container(
                  height: 275,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(37, 37, 37, 1),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadiusDirectional.only(
                                bottomStart: Radius.circular(75)),
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: products.length,
                            itemBuilder: (context, index) => ProductCard(
                              productName: products[index].productName,
                              productPrice: products[index].productPrice,
                              imageAdd: products[index].imageAdd,
                              productDesc: products[index].productDescription,
                              reviews: products[index].reviews,
                              categories: products[index].categories,
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 275,
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text('Special for you',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              )),
                          Container(
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'See All',
                                style: const TextStyle(
                                    color:
                                        const Color.fromRGBO(255, 153, 124, 1)),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.all(20.0),
                        width: 340,
                        height: 90.5,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  products[2].imageAdd,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${products[2].productName}',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '\$ ${products[2].productPrice}',
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                              bottom: -20,
                              right: -20,
                              child: Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(24),
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    print('Button');
                                  },
                                  iconSize: 12,
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color.fromRGBO(59, 59, 59, 1)),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(37, 37, 37, 1),
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(75)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
