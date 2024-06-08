import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withOpacity(.20),
      ),
      child: Center(
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 28,
                color: Colors.white,
              ))),
    );
  }
}
