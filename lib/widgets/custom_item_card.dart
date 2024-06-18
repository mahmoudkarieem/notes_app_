import 'package:flutter/material.dart';

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.only(
          right: 18,
          left: 32,
          top: 24,
          bottom: 24,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(
              0xffffcc78,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
              subtitle: const Text(
                "Build Your career with tharwat samy",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff9e7e4c),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 32,
                  )),
            ),
            const SizedBox(
              height: 12,
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                " June 6,2024 ",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff9e7e4c),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
