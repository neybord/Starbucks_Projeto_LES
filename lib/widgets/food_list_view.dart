import 'package:flutter/material.dart';
import 'package:starbucks/widgets/restaurant.dart';

import 'food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;

  FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category
            .map(
              (e) => Container(
                child: SizedBox.expand(
                  child: DraggableScrollableSheet(
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return Container(
                        color: Colors.blue[100],
                        child: ListView.builder(
                          controller: scrollController,
                          itemCount: 25,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(title: Text('Item $index'));
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
