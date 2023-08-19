import 'package:stacked/stacked.dart';

class TagDetailScreenViewModel extends BaseViewModel {
  final int? tagId;
  TagDetailScreenViewModel(this.tagId){
    loadItems();
  }
  
  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }

}