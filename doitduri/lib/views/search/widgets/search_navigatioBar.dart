import 'package:flutter/cupertino.dart';

class SearchNavigationBar extends StatefulWidget {
  const SearchNavigationBar({super.key});

  @override
  State<StatefulWidget> createState() => _SearchNavigationBar();
}

class _SearchNavigationBar extends State<SearchNavigationBar> {

  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: false,
      delegate: _SliverSearchBarDelegate(
          child: Container(
        height: 20,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
        color: CupertinoDynamicColor.resolve(CupertinoTheme.of(context).barBackgroundColor, context),
        child: CupertinoSearchTextField(
          controller: searchController,
        ),
      )),
    );
  }
}

class _SliverSearchBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverSearchBarDelegate({
    required this.child,
    this.minHeight = 42.0,
    this.maxHeight = 42.0,
  });

  final Widget child;
  final double minHeight;
  final double maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverSearchBarDelegate delegate) {
    return maxHeight != delegate.maxHeight ||
        minHeight != delegate.minHeight ||
        child != delegate.child;
  }
}
