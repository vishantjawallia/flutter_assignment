// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

part of tag_detail_screen_view;

// ignore: must_be_immutable
class _TagDetailScreenMobile extends StatelessWidget {
  final TagDetailScreenViewModel viewModel;

  _TagDetailScreenMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, viewModel),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Palettes.primary.withOpacity(0.4),
              ),
              child: Text(
                viewModel.tag?.name != null ? '#${viewModel.tag?.name}' : "",
                style: Get.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Flexible(
              fit: FlexFit.loose,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: viewModel.quotesList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  Authors author = viewModel.authorsList.firstWhere((e) => e.id == viewModel.quotesList[index].authorId);
                  return QuoteBoxed(
                    color: Color(viewModel.quotesList[index].color!),
                    name: viewModel.quotesList[index].name,
                    author: author.name,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
