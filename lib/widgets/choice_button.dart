import 'package:flutter/material.dart';
class ChoiceButton extends StatelessWidget {
  final double width;
  final double height;
  final double size;
  final Color color;
  final bool hasGradient;
  final IconData icon;
  const ChoiceButton({
    Key? key,
    required this.width,
    required this.height,
    required this.size,
    required this.color,
    required this.icon,
    required this.hasGradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        gradient: hasGradient
            ? const LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.blue,
                ],
              )
            : const LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                ],
              ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withAlpha(30),
        //     spreadRadius: 4,
        //     offset: Offset(1, 1),
        //   )
        // ],
      ),
      child: Icon(
        icon,
        color: color,
        size: size,
      ),
    );
  }
}
