// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_assignment/views/dashboard_screen/dashboard_screen_view_model.dart';
import 'package:get/get.dart';

import '../../../theme/palettes.dart';

appBar(context, DashboardScreenViewModel viewModel) {
  return AppBar(
    toolbarHeight: 90,
    elevation: 0,
    backgroundColor: Palettes.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '"Quote',
          style: Get.textTheme.displayLarge!.copyWith(fontSize: 60, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Palettes.primary.withOpacity(0.25),
              ),
              child: Icon(
                color: Palettes.grey,
                Icons.format_list_bulleted_outlined,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(
                color: Palettes.grey,
                Icons.photo_size_select_actual_rounded,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
