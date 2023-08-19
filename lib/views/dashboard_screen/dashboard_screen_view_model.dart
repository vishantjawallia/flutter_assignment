import 'dart:developer';

import 'package:flutter/animation.dart';
import 'package:flutter_assignment/config/config.dart';
import 'package:flutter_assignment/models/authors.dart';
import 'package:flutter_assignment/models/quotes.dart';
import 'package:flutter_assignment/views/author_detail_screen/author_detail_screen_view.dart';
import 'package:flutter_assignment/views/tag_detail_screen/tag_detail_screen_view.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

import '../../models/tags.dart';
import 'service/dashboard_service.dart';

class DashboardScreenViewModel extends BaseViewModel with DashboradService {
  List<Tags> tagsList = [];
  List<Quotes> quotesList = [];
  List<Authors> authorList = [];
  AnimationController? animationController;
  Animation<double>? animation;

  bool isGrid = true;

  DashboardScreenViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    // await Future.delayed(const Duration(seconds: 1));
    authorList = Authors.fromJsonList(authors);
    log(authorList.toString());
    tagsList = Tags.fromJsonList(tags);
    quotesList = Quotes.fromJsonList(quotes);
    setBusy(false);
    notifyListeners();
  }

  void tagOnTapHandler(int id) {
    Get.to(TagDetailScreenView(id));
  }

  void authorOnTapHandler(int id) {
    Get.to(AuthorDetailScreenView(id));
  }

  void layoutChangeHandler() {
    isGrid = !isGrid;
    notifyListeners();
  }
}
