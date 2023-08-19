import 'package:flutter/material.dart';
import 'package:flutter_assignment/theme/palettes.dart';
import 'package:get/get.dart';

class TagBoxed extends StatelessWidget {
  final String? name;
  final VoidCallback? onTap;
  const TagBoxed({
    super.key,
    this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Palettes.primary.withOpacity(0.4),
        ),
        child: Text(
          '#$name',
          style: Get.textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
