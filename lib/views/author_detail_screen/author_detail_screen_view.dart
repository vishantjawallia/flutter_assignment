library author_detail_screen_view;

import 'package:flutter_assignment/config/config.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import '../../models/authors.dart';
import '../../theme/palettes.dart';
import 'author_detail_screen_view_model.dart';
import 'components/app_bar.dart';
import 'widgets/quote_boxed.dart';

part 'author_detail_screen_mobile.dart';
part 'author_detail_screen_tablet.dart';
part 'author_detail_screen_desktop.dart';

class AuthorDetailScreenView extends StatelessWidget {
  static const routeName = '/author_detail_screen';
  final int? id;

  const AuthorDetailScreenView(this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthorDetailScreenViewModel>.reactive(
      viewModelBuilder: () => AuthorDetailScreenViewModel(id),
      onViewModelReady: (viewModel) {},
      builder: (context, viewModel, child) {
        return ScreenTypeLayout.builder(
          mobile: (_) => _AuthorDetailScreenMobile(viewModel),
          desktop: (_) => _AuthorDetailScreenMobile(viewModel),
          tablet: (_) => _AuthorDetailScreenMobile(viewModel),
        );
      },
    );
  }
}
