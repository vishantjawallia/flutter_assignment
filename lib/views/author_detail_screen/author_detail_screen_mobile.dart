part of author_detail_screen_view;

// ignore: must_be_immutable
class _AuthorDetailScreenMobile extends StatelessWidget {
  final AuthorDetailScreenViewModel viewModel;

  const _AuthorDetailScreenMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AuthorDetailScreenMobile'),
      ),
    );
  }
}
