// ignore_for_file: unused_element

part of tag_detail_screen_view;

class _TagDetailScreenDesktop extends StatelessWidget {
  final TagDetailScreenViewModel viewModel;

  const _TagDetailScreenDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('TagDetailScreenDesktop'),
      ),
    );
  }
}
