import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.grey[800],
        child: const Center(
          child: Text(
            '© 2024 Sophia\'s Marketplace - All Rights Reserved',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ));
  }
}
