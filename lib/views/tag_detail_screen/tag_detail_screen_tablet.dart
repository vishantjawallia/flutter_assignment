// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, unused_element

part of tag_detail_screen_view;

class _TagDetailScreenTablet extends StatelessWidget {
  final TagDetailScreenViewModel viewModel;

  _TagDetailScreenTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('TagDetailScreenTablet'),
      ),
    );
  }
}
