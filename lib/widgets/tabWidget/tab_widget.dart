import 'package:flutter/material.dart';

class TabItemWidget extends StatelessWidget {
  final String title;
  final bool isSelected;

  const TabItemWidget({
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: isSelected ? Colors.black : Colors.grey.shade600,
        ),
      ),
    );
  }
}
