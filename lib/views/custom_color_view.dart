import 'package:flutter/material.dart';

class CustomColorView extends StatefulWidget {
  const CustomColorView(
      {super.key,
      required this.color,
      required this.index,
      required this.isSelected,
      required this.function});

  final Color color;
  final int index;
  final bool isSelected;
  final void Function() function;
  @override
  State<CustomColorView> createState() => _CustomColorViewState();
}

class _CustomColorViewState extends State<CustomColorView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.function,
      child: Container(
        height: 44,
        width: 44,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            border: widget.isSelected
                ? Border.all(width: 4, color: Colors.red)
                : null,
            borderRadius: BorderRadius.circular(100),
            color: widget.color),
      ),
    );
  }
}
