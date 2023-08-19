// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../author_detail_screen_view_model.dart';

appBar(context, AuthorDetailScreenViewModel viewModel) {
  return AppBar(
    toolbarHeight: 90,
    elevation: 0,
    backgroundColor: Get.theme.appBarTheme.backgroundColor,
    leading: const BackButton(),
  );
}
