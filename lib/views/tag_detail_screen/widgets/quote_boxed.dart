import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/palettes.dart';

class QuoteBoxed extends StatelessWidget {
  final String? name;
  final String? author;
  final Color? color;
  const QuoteBoxed({
    super.key,
    required this.name,
    this.color,
    this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 10),
            child: Text(
              name ?? "People Often Say That Motivation Doesn't Last. Well, Neither Does Bathing -- That's Why We Recommend It Daily.",
              style: TextStyle(
                fontSize: Get.textTheme.headlineSmall!.fontSize! + 1,
                fontWeight: FontWeight.w800,
                height: 1.46,
                color: color ?? Colors.blue.shade700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "- ${author ?? "Vishant Jawallia"}",
              style: TextStyle(
                fontSize: Get.textTheme.titleLarge!.fontSize,
                fontWeight: FontWeight.w700,
                height: 1.53,
                color: Palettes.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // const SizedBox(height: 20),
        ],
      ),
    );
  }
}
