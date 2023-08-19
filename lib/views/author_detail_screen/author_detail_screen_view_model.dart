import 'package:flutter_assignment/config/config.dart';
import 'package:flutter_assignment/models/quotes.dart';
import 'package:stacked/stacked.dart';

import '../../models/authors.dart';
import '../../models/tags.dart';

class AuthorDetailScreenViewModel extends BaseViewModel {
  final int? authorId;

  Authors? author;
  List<Authors> authorsList = [];
  List<Tags> tagsList = [];
  List<Quotes> quotesList = [];

  AuthorDetailScreenViewModel(this.authorId) {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    authorsList = Authors.fromJsonList(authors);
    tagsList = Tags.fromJsonList(tags);
    author = authorsList.firstWhere((e) => e.id == authorId);
    quotesList = Quotes.fromJsonList(quotes).where((e) => e.authorId == author!.id).toList();
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }
}
