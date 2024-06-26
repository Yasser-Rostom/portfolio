import 'package:flutter/cupertino.dart';
import 'package:portfolio/locator.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScrollProvider {
  final ItemScrollController itemScrollController = locator<ItemScrollController>();
  final scrollDuration = const Duration(seconds: 1);

  void jumpTo(int index) => itemScrollController.scrollTo(
      index: index,
      duration: scrollDuration,
      curve: Curves.easeInOutCubic,
      alignment: 0);
}