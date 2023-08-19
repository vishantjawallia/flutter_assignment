// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

part of tag_detail_screen_view;

// ignore: must_be_immutable
class _TagDetailScreenMobile extends StatelessWidget {
  final TagDetailScreenViewModel viewModel;

  _TagDetailScreenMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('TagDetailScreenMobile'),
      ),
    );
  }
}
