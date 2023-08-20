// ignore_for_file: use_key_in_widget_constructors

library dashboard_screen_view;

import 'package:flutter/gestures.dart';
// import 'package:flutter_assignment/helpers/%20extension.dart';
// import 'package:flutter_assignment/theme/palettes.dart';
import 'package:flutter_assignment/views/dashboard_screen/widgets/quote_boxed.dart';

import 'package:flutter_assignment/views/dashboard_screen/widgets/tag_boxed.dart';
// import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import '../../models/authors.dart';
import 'components/app_bar.dart';
import 'dashboard_screen_view_model.dart';
import 'widgets/quote_boxed2.dart';

part 'dashboard_screen_mobile.dart';
part 'dashboard_screen_tablet.dart';
part 'dashboard_screen_desktop.dart';

// ignore: must_be_immutable
class DashboardScreenView extends StatelessWidget {
  static const routeName = '/dashboard_screen';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardScreenViewModel>.reactive(
      viewModelBuilder: () => DashboardScreenViewModel(),
      onViewModelReady: (viewModel) {},
      builder: (context, viewModel, child) {
        return ScreenTypeLayout.builder(
          mobile: (_) => _DashboardScreenMobile(viewModel),
          desktop: (_) => _DashboardScreenMobile(viewModel),
          tablet: (_) => _DashboardScreenMobile(viewModel),
        );
      },
    );
  }
}
