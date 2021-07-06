import 'package:flutter/material.dart';

class CategoryBar extends StatefulWidget {
  @override
  _CategoryBarState createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          child: TabBar(
            unselectedLabelColor: Color.fromRGBO(37, 37, 37, 0.4),
            isScrollable: true,
            labelColor: Colors.white,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 141, 106, 1),
                  Color.fromRGBO(241, 112, 72, 1),
                  Color.fromRGBO(255, 152, 120, 1),
                  Color.fromRGBO(242, 180, 162, 1),
                  Color.fromRGBO(255, 153, 124, 1),
                  Color.fromRGBO(255, 148, 114, 1),
                ],
              ),
            ),
            tabs: [
              Tab(
                text: 'All Product',
              ),
              Tab(
                text: 'Recommended',
              ),
              Tab(
                text: 'New Product',
              ),
              Tab(
                text: 'Popular',
              ),
            ],
          ),
        ));
  }
}
