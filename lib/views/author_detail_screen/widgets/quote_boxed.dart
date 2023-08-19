import 'package:flutter/material.dart';
import 'package:flutter_assignment/helpers/%20extension.dart';
import 'package:get/get.dart';

class QuoteBoxed extends StatelessWidget {
  final String? name;
  final Color? color;
  final bool lineVisible;
  const QuoteBoxed({
    super.key,
    required this.name,
    this.color,
    this.lineVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
          const SizedBox(height: 14),
          lineVisible
              ? SizedBox(
                  width: 70.w,
                  child: const Divider(
                    thickness: 2,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
