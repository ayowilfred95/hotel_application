import 'package:flutter/material.dart';
import 'package:hotel_application/main.dart';
import 'package:hotel_application/models/bottom_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<BottomBarItem> barItems = barItemsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(barItems.length, (index) {
          var barItem = barItems[index];

          return GestureDetector(
            onTap: () {
              setState(() {
                for (var element in barItems) {
                  element.isSelected = barItem == element;
                }
              });
            },
            child: Column(children: [
              Icon(barItem.icon,
                  color: barItem.isSelected! ? mainThemeColor : Colors.grey),
              Text(
                barItem.label!,
                style: TextStyle(
                    color: (barItem.isSelected! ? mainThemeColor : Colors.grey),
                    fontSize: 11),
              ),
            ]),
          );
        }),
      ),
    );
  }
}
