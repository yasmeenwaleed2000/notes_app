import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Center(
        child: Icon(
          icon,
          size: 28,
        ),
      ),
      
    );
  }
}