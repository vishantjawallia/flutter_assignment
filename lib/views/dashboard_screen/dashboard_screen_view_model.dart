import 'dart:developer';

import 'package:flutter_assignment/config/config.dart';
import 'package:flutter_assignment/models/authors.dart';
import 'package:flutter_assignment/models/quotes.dart';
import 'package:flutter_assignment/views/tag_detail_screen/tag_detail_screen_view.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

import '../../models/tags.dart';
import 'service/dashboard_service.dart';

class DashboardScreenViewModel extends BaseViewModel with DashboradService {
  List<Tags> tagsList = [];
  List<Quotes> quotesList = [];
  List<Authors> authorList = [];

  // TabController? tabController;

  DashboardScreenViewModel() {
    // tabController!.addListener(() { notifyListeners(); });
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
}
