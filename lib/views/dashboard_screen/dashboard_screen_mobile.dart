// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

part of dashboard_screen_view;

// ignore: must_be_immutable
class _DashboardScreenMobile extends StatefulWidget {
  final DashboardScreenViewModel viewModel;

  const _DashboardScreenMobile(this.viewModel);

  @override
  State<_DashboardScreenMobile> createState() => _DashboardScreenMobileState();
}

class _DashboardScreenMobileState extends State<_DashboardScreenMobile> with TickerProviderStateMixin {
  late TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: widget.viewModel.quotesList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, widget.viewModel),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            if (widget.viewModel.quotesList.isNotEmpty)
              Container(
                height: 270,
                child: TabBarView(
                  dragStartBehavior: DragStartBehavior.start,
                  controller: tabController,
                  clipBehavior: Clip.antiAlias,
                  physics: BouncingScrollPhysics(),
                  children: widget.viewModel.quotesList
                      .map(
                        (e) => QuoteBoxed(
                          name: e.name,
                          color: Color(e.color!.toInt()),
                          author: widget.viewModel.authorList.firstWhere((i) => i.id == e.authorId).name,
                          // author: widget.viewModel.authorList.firstWhere((i) => i.id == e.authorId).name,
                        ),
                      )
                      .toList(),
                ),
              ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                runSpacing: 12,
                spacing: 10,
                children: widget.viewModel.tagsList.map((e) => TagBoxed(name: e.name, onTap: () => widget.viewModel.tagOnTapHandler(e.id!))).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
