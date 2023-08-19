// ignore_for_file: unused_element

part of author_detail_screen_view;

class _AuthorDetailScreenTablet extends StatelessWidget {
  final AuthorDetailScreenViewModel viewModel;

  const _AuthorDetailScreenTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AuthorDetailScreenTablet'),
      ),
    );
  }
}
