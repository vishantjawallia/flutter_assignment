import 'package:flutter_assignment/config/config.dart';
import 'package:flutter_assignment/models/authors.dart';
import 'package:flutter_assignment/models/tags.dart';
import 'package:stacked/stacked.dart';

import '../../models/quotes.dart';

class TagDetailScreenViewModel extends BaseViewModel {
  final int? tagId;

  Tags? tag;
  List<Quotes> quotesList = [];
  List<Authors> authorsList = [];
  List<Tags> tagsList = [];

  TagDetailScreenViewModel(this.tagId) {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    authorsList = Authors.fromJsonList(authors);
    tagsList = Tags.fromJsonList(tags);
    tag = tagsList.firstWhere((e) => e.id == tagId);
    quotesList = Quotes.fromJsonList(quotes).where((e) => e.tagId == tag!.id).toList();
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }
}
