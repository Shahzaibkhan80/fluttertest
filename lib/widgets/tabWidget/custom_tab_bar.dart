import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../view_modal/generalProvider/generalController.dart';
import 'tab_widget.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabController = Provider.of<GeneralProvider>(context);

    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => tabController.setTabIndex(0),
            child: TabItemWidget(
                title: "Make Friends",
                isSelected: tabController.selectedIndex == 0),
          ),
          GestureDetector(
            onTap: () => tabController.setTabIndex(1),
            child: TabItemWidget(
                title: "Search Partners",
                isSelected: tabController.selectedIndex == 1),
          ),
        ],
      ),
    );
  }
}
