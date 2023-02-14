import 'package:flutter/material.dart';
import '../Model/BottomNavigationBarItemModel.dart';

typedef OnTap = void Function(int index);


class TabBarContainerView extends StatefulWidget {
  const TabBarContainerView({super.key, required this.items, required this.onTap});

  final OnTap onTap;
  final List<BottomNavigationBarItemModel> items;

  @override
  State<TabBarContainerView> createState() => _TabBarContainerView();
}

class _TabBarContainerView extends State<TabBarContainerView> {

  int tapIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.items[tapIndex].page,
      bottomNavigationBar: _bottomNavigationBar()
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    List<BottomNavigationBarItem> childItems = [];
    for (var element in widget.items) {
      BottomNavigationBarItem child = BottomNavigationBarItem(
        icon: element.icon,
        label: element.name
      );
      childItems.add(child);
    }
    return BottomNavigationBar(items: childItems, selectedFontSize: 12, unselectedFontSize: 12, currentIndex: tapIndex, onTap: (int index) {
      setState(() {
        tapIndex = index;
      });
      widget.onTap(index);
    });
  }
}
