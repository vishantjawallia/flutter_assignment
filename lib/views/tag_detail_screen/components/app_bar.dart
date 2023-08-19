// ignore_for_file: unused_element

import 'package:flutter/material.dart';

import '../../../theme/palettes.dart';

import '../tag_detail_screen_view_model.dart';

appBar(context, TagDetailScreenViewModel viewModel) {
  return AppBar(
    toolbarHeight: 90,
    elevation: 0,
    backgroundColor: Palettes.white,
    leading: const BackButton(),
  );
}
