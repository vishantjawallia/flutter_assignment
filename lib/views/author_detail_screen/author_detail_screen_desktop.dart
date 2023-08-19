part of author_detail_screen_view;

// ignore: must_be_immutable
class _AuthorDetailScreenDesktop extends StatelessWidget {
  final AuthorDetailScreenViewModel viewModel;

  const _AuthorDetailScreenDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('AuthorDetailScreenDesktop')),
    );
  }
}