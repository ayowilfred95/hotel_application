import 'package:flutter/material.dart';

class BottomBarItem {
  String? label;
  bool? isSelected;
  IconData? icon;
  
  BottomBarItem({ this.label, this.isSelected, this.icon });
}


// populate the list of BottomBarItem models

final List<BottomBarItem> barItemsList = [
  BottomBarItem(label: 'Home', isSelected: true, icon: Icons.home),
  BottomBarItem(label: 'Account', isSelected: false, icon: Icons.person),
  BottomBarItem(label: 'Bookings', isSelected: false, icon: Icons.pending_actions),
  BottomBarItem(label: 'Payments', isSelected: false, icon: Icons.payments),
  BottomBarItem(label: 'More', isSelected: false, icon: Icons.more_horiz),
];
