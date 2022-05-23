import 'package:flutter/material.dart';

Widget listViewSeparatedNoDivider(
    {@required int? itemCount,
    @required Function(BuildContext context, int index)? itemBuilder,
    ScrollPhysics? physics,
    bool primary = true,
    EdgeInsets? padding,
    Axis scrollDirection = Axis.vertical,
    ScrollController? scrollController,
    bool shrinkWrap = false,
    double heightSpace = 18.0}) {
  return ListView.separated(
    itemBuilder: itemBuilder as Widget Function(BuildContext, int),
    controller: scrollController,
    separatorBuilder: (context, index) => const SizedBox(height: 10),
    physics: physics ?? const BouncingScrollPhysics(),
    primary: primary,
    itemCount: itemCount!,
    padding: padding ?? const EdgeInsets.only(bottom: 10),
    scrollDirection: scrollDirection,
    shrinkWrap: shrinkWrap,
  );
}
