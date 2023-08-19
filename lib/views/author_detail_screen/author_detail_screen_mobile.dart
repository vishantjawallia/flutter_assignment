// ignore_for_file: unrelated_type_equality_checks

part of author_detail_screen_view;

// ignore: must_be_immutable
class _AuthorDetailScreenMobile extends StatelessWidget {
  final AuthorDetailScreenViewModel viewModel;

  const _AuthorDetailScreenMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, viewModel),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                viewModel.author!.name ?? "",
                style: TextStyle(
                  fontSize: Get.textTheme.headlineLarge!.fontSize,
                  fontWeight: FontWeight.w700,
                  height: 1.53,
                  color: Palettes.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            Flexible(
              fit: FlexFit.loose,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: viewModel.quotesList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return QuoteBoxed(
                    color: Color(viewModel.quotesList[index].color!),
                    name: viewModel.quotesList[index].name,
                    lineVisible: viewModel.quotesList.last == viewModel.quotesList[index] ? false : true,
                  );
                },
              ),
            ),
            // Container(
            //     // height: 270,
            //     child: Column(
            //   children: [
            //     QuoteBoxed(
            //       name: quotes.first["name"],
            //       // authorOnTap: () {},
            //     ),
            //   ],
            // )),
          ],
        ),
      ),
    );
  }
}
