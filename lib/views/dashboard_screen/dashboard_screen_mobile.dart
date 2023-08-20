// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, must_be_immutable

part of dashboard_screen_view;

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
          children: [
            if (widget.viewModel.isGrid)
              Column(
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
                        children: widget.viewModel.quotesList.map(
                          (e) {
                            Authors author = widget.viewModel.authorList.firstWhere((i) => i.id == e.authorId);
                            return QuoteBoxed(
                              name: e.name,
                              color: Color(e.color!.toInt()),
                              author: author.name,
                              authorOnTap: () => widget.viewModel.authorOnTapHandler(author.id!),
                            );
                          },
                        ).toList(),
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
              )
            else
              VerticalListing(widget.viewModel),
          ],
        ),
      ),
    );
  }
}

class VerticalListing extends StatefulWidget {
  DashboardScreenViewModel viewModel;
  VerticalListing(
    this.viewModel, {
    super.key,
  });

  @override
  State<VerticalListing> createState() => _VerticalListingState();
}

class _VerticalListingState extends State<VerticalListing> with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  @override
  initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller!,
      curve: Curves.fastOutSlowIn,
    );

    _controller!.forward();
  }

  @override
  dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FadeTransition(
        opacity: _animation!,
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 10),
          itemCount: widget.viewModel.quotesList.length,
          itemBuilder: (context, index) {
            Authors author = widget.viewModel.authorList.firstWhere((i) => i.id == widget.viewModel.quotesList[index].authorId);
            return QuoteBoxed2(
              author: author.name,
              name: widget.viewModel.quotesList[index].name,
              color: Color(widget.viewModel.quotesList[index].color!.toInt()),
              lineVisible: widget.viewModel.quotesList.last == widget.viewModel.quotesList[index] ? false : true,
            );
          },
        ),
      ),
    );
  }
}
