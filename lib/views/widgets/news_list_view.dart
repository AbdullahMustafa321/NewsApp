import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/views/widgets/news_tile.dart';


class NewsListView extends StatelessWidget {
  final List<ArticlesMosdel> articales;
  const NewsListView({super.key, required this.articales});
  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
            childCount: articales.length,
            (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: NewsTile(
                  article: articales[index],
                ),
              );
            },
          ));
  }
}
